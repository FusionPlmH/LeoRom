.class public Lcom/samsung/android/settings/eternal/manager/DocumentValidator;
.super Ljava/lang/Object;
.source "DocumentValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;
    }
.end annotation


# instance fields
.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;",
            ">;"
        }
    .end annotation
.end field

.field private mValidationResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$1;-><init>(Lcom/samsung/android/settings/eternal/manager/DocumentValidator;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;->mComparator:Ljava/util/Comparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;->mValidationResult:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/eternal/manager/DocumentValidator;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;->convertValidationResult()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private convertValidationResult()Lorg/json/JSONObject;
    .locals 10

    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;->mValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;

    invoke-virtual {v5}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "DocumentValidator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertValidationResult() itemUid is empty : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_1

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    move-object v0, v6

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move-object v3, v7

    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->convertToJSON()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    const-string v4, "Category"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method private writeValidationResultToFile()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;->mValidationResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;->mValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$2;-><init>(Lcom/samsung/android/settings/eternal/manager/DocumentValidator;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkValidationOfBackupElement(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    const-string v3, "DocumentValidator"

    const-string v4, "getValidationResult() - beforeGroup is null"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ""

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    if-nez v2, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    :goto_1
    move-object v15, v9

    if-eqz v14, :cond_7

    if-eqz v15, :cond_7

    const-string v9, "errorType"

    const-string v10, ""

    invoke-virtual {v14, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "errorType"

    invoke-virtual {v14, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v9, "defaultValue"

    const-string v10, ""

    invoke-virtual {v14, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v8, 0x1

    goto :goto_4

    :cond_2
    const-string v10, "defaultValue"

    invoke-virtual {v14, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v13, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    const/4 v8, 0x2

    goto :goto_3

    :cond_3
    if-nez v13, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x2

    move v8, v1

    :cond_5
    :goto_3
    move-object/from16 v1, p1

    goto :goto_2

    :cond_6
    :goto_4
    goto :goto_6

    :cond_7
    if-nez v14, :cond_b

    if-eqz v15, :cond_8

    goto :goto_7

    :cond_8
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "defaultValue"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :cond_9
    goto :goto_5

    :cond_a
    :goto_6
    move v1, v8

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v1, 0x2

    :goto_8
    new-instance v13, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    move-object v11, v7

    move v12, v1

    move/from16 v17, v1

    move-object v1, v13

    move-object v13, v5

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_c
    iget-object v1, v0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;->mComparator:Ljava/util/Comparator;

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, v0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;->mValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getValidationResult(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "DocumentValidator"

    const-string v1, "getValidationResult() - beforeGroup is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;->mValidationResult:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "deviceType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v4, "version"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-nez p2, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;->checkValidationOfBackupElement(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;->writeValidationResultToFile()V

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;->mValidationResult:Ljava/util/ArrayList;

    return-object v1
.end method
