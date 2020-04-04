.class public Lcom/samsung/android/sdk/look/SlookImpl;
.super Ljava/lang/Object;
.source "SlookImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/SlookImpl$VERSION_CODES;
    }
.end annotation


# static fields
.field private static final AIRBUTTON:I = 0x1

.field private static final COCKTAIL_BAR:I = 0x6

.field private static final COCKTAIL_PANEL:I = 0x7

.field public static final DEBUG:Z = true

.field private static final SDK_INT:I

.field private static final SMARTCLIP:I = 0x2

.field private static final SPEN_HOVER_ICON:I = 0x4

.field private static final WRITINGBUDDY:I = 0x3

.field private static sCocktailLevel:I

.field private static sHasMetaEdgeSingle:I

.field private static sUspLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.slook.ver"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCocktailLevel()V
    .locals 4

    sget v0, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v1, "com.sec.feature.cocktailbar"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput v1, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    sget v1, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-nez v1, :cond_2

    const-string v1, "com.sec.feature.cocktailpanel"

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    nop

    :cond_1
    sput v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    :goto_1
    return-void
.end method

.method private static checkValidCocktailMetaData()V
    .locals 13

    sget v0, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_6

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x80

    invoke-interface {v1, v2, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const-string v7, "com.samsung.android.cocktail.mode"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v8, "edge_single"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sput v6, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    :cond_1
    sget v7, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    if-nez v7, :cond_5

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    nop

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-interface {v1, v7, v8, v4, v9}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    move v8, v0

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    nop

    :goto_1
    if-ge v0, v8, :cond_5

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v12, 0x40000

    and-int/2addr v11, v12

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object v5, v11

    if-eqz v5, :cond_4

    const-string v11, "com.samsung.android.cocktail.mode"

    const-string v12, ""

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    const-string v12, "edge_single"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    sput v6, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    :cond_6
    :goto_4
    return-void

    :cond_7
    :goto_5
    return-void
.end method

.method public static getVersionCode()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    return v0
.end method

.method public static isFeatureEnabled(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkCocktailLevel()V

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v2, :cond_0

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-gt v2, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkCocktailLevel()V

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v2, :cond_1

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-gt v2, p0, :cond_1

    return v0

    :cond_1
    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v2, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkValidCocktailMetaData()V

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :cond_3
    return v1

    :pswitch_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_4

    return v1

    :cond_4
    :pswitch_4
    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    nop

    :cond_5
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p0, v0, :cond_7

    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-lt v4, v3, :cond_6

    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-gt v3, v2, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    return v0

    :cond_7
    if-ne p0, v2, :cond_9

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-lt v2, v3, :cond_8

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    const/16 v3, 0x9

    if-gt v2, v3, :cond_8

    goto :goto_3

    :cond_8
    move v0, v1

    :goto_3
    return v0

    :cond_9
    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-lt v2, v3, :cond_a

    goto :goto_4

    :cond_a
    move v0, v1

    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
