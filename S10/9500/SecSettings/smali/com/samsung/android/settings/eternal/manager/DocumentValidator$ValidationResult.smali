.class public Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;
.super Ljava/lang/Object;
.source "DocumentValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eternal/manager/DocumentValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidationResult"
.end annotation


# instance fields
.field private mAfter:Landroid/os/Bundle;

.field private mBefore:Landroid/os/Bundle;

.field private mErrorType:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mResult:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mBefore:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mAfter:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mKey:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mResult:I

    iput-object p5, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mErrorType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public convertToJSON()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mBefore:Landroid/os/Bundle;

    if-nez v2, :cond_0

    const-string v2, "DocumentValidator"

    const-string v3, "convertToJSON() - mBefore is null"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mBefore:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->getResultItem(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "defaultValue"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "value"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->getResultItem(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mErrorType:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getResultItem(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ValueOrAttrName"

    const-string/jumbo v2, "value"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Source"

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mBefore:Landroid/os/Bundle;

    if-nez v2, :cond_1

    const-string v2, "null"

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mBefore:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Target"

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mAfter:Landroid/os/Bundle;

    if-nez v2, :cond_2

    const-string v2, "null"

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mAfter:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "value"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeneralInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Result"

    const-string v2, "SKIP"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Reason"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    :cond_3
    const-string v1, "Result"

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->getResultString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mResult:I

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->getErrorType()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_0
    const-string v1, "Reason"

    const-string v2, "DEFAULT_VALUE"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6

    :pswitch_1
    const-string v1, "Reason"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6

    :goto_3
    nop

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Reason"

    const-string v3, "REFER_TO_LOG"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_4
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v3, "UNSUPPORTED_DEVICE_TYPE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x5

    goto :goto_4

    :sswitch_1
    const-string v3, "UNKNOWN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x3

    goto :goto_4

    :sswitch_2
    const-string v3, "PERMISSION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :sswitch_3
    const-string v3, "FEATURE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    goto :goto_4

    :sswitch_4
    const-string v3, "STORAGE_FULL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x2

    goto :goto_4

    :sswitch_5
    const-string v3, "INVALID_DATA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x4

    goto :goto_4

    :sswitch_6
    const-string v3, "RESTORE_RESTRICTED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x6

    :cond_5
    :goto_4
    packed-switch v2, :pswitch_data_1

    const-string v2, "Reason"

    goto :goto_5

    :pswitch_2
    const-string v2, "Reason"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :goto_5
    const-string v3, "REFER_TO_LOG"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_6
    goto :goto_7

    :cond_6
    const-string v1, "Result"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Reason"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    goto :goto_8

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7072c534 -> :sswitch_6
        -0x54b8ceee -> :sswitch_5
        -0x3ea63a0d -> :sswitch_4
        -0xf91f92a -> :sswitch_3
        -0x1f04e31 -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x2e24d059 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getResultString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mResult:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "SKIP"

    return-object v0

    :cond_0
    const-string v0, "FAIL"

    return-object v0

    :cond_1
    const-string v0, "PASS"

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->mKey:Ljava/lang/String;

    const-string v2, "/"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
