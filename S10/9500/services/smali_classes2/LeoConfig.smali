.class public Lcom/fusionleo/LeoX/server/LeoConfig;
.super Ljava/lang/Object;
.source "LeoConfig.java"


# static fields
.field public static EnablePowerGlobalService:Z

.field public static PACKAGE_SYSTEMUI:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;

.field public static mAppsManager:Ljava/lang/String;

.field private static mKillWhiteList:Ljava/lang/String;

.field public static mLeoManager:Ljava/lang/String;

.field public static mNavBar:F

.field public static mSearch:Ljava/lang/String;

.field public static mVideoManager:Ljava/lang/String;

.field public static mWIFIManager:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->Config:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/fusionleo/LeoX/server/LeoGlobalAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusionleo/LeoX/server/LeoConfig;->TAG:Ljava/lang/String;

    const-string v0, "com.android.systemui"

    sput-object v0, Lcom/fusionleo/LeoX/server/LeoConfig;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    const-string v0, "com.android.systemui##com.android.phone##com.leo.salt.tweaks##com.sec.android.app.launcher"

    sput-object v0, Lcom/fusionleo/LeoX/server/LeoConfig;->mKillWhiteList:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusionleo/LeoX/server/LeoConfig;->EnablePowerGlobalService:Z

    const-string v0, "com.leo.salt.tweaks/com.leo.salt.tweaks.amber.AppsActivity"

    sput-object v0, Lcom/fusionleo/LeoX/server/LeoConfig;->mAppsManager:Ljava/lang/String;

    const-string v0, "com.leo.salt.tweaks/com.leo.salt.tweaks.amber.WifiPasswordActivity"

    sput-object v0, Lcom/fusionleo/LeoX/server/LeoConfig;->mWIFIManager:Ljava/lang/String;

    const-string v0, "com.leo.salt.tweaks/com.leo.salt.tweaks.SplashActivity"

    sput-object v0, Lcom/fusionleo/LeoX/server/LeoConfig;->mLeoManager:Ljava/lang/String;

    const-string v0, "com.sec.app.screenrecorder/com.sec.app.screenrecorder.activity.LauncherActivity"

    sput-object v0, Lcom/fusionleo/LeoX/server/LeoConfig;->mVideoManager:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.galaxyfinder/com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    sput-object v0, Lcom/fusionleo/LeoX/server/LeoConfig;->mSearch:Ljava/lang/String;

    const-string v0, "persist.sys.display_density"

    const/16 v1, 0x1a4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    sput v0, Lcom/fusionleo/LeoX/server/LeoConfig;->mNavBar:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0, p1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoConfig;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static CleanProcesse(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "Y29tLmxlby5BQ1RJT05fQ0xFQU4="

    invoke-static {v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoConfig;->TAG:Ljava/lang/String;

    const-string v2, "error occurred"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static LeoManagerService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :try_start_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object v1, v4

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "Y29tLmxlby5ST01fQ09OVFJPTA=="

    invoke-static {v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v4, "activity_no"

    invoke-static {p0, v4}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static PowerMenuService(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/fusionleo/LeoX/server/LeoConfig;->EnablePowerGlobalService:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Lcom/fusionleo/LeoX/server/LeoConfig;->PowerMenuStyleService(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/fusionleo/LeoX/server/LeoConfig;->EnablePowerGlobalService:Z

    :goto_0
    return-void
.end method

.method public static PowerMenuStyleService(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string v0, "Y29tLmxlby5BQ1RJT05fUE9XRVJfU0lNUExJRlk="

    return-object v0

    :cond_0
    const-string v0, "Y29tLmxlby5BQ1RJT05fUE9XRVJfRA=="

    return-object v0

    :cond_1
    const-string v0, "Y29tLmxlby5BQ1RJT05fUE9XRVJfQw=="

    return-object v0

    :cond_2
    const-string v0, "Y29tLmxlby5BQ1RJT05fUE9XRVJfQg=="

    return-object v0

    :cond_3
    const-string v0, "Y29tLmxlby5BQ1RJT05fUE9XRVJfQQ=="

    return-object v0
.end method

.method public static getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public static getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLeoMobilemode(Landroid/content/Context;I)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "mobile_data_no"

    invoke-static {p0, v0}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "mobile_data_yes"

    invoke-static {p0, v0}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getLeoString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLeoUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getResourcesForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    return-object v1
.end method

.method public static getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->ConfigManager:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getResourcesForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "c3RyaW5n"

    invoke-static {v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->ConfigManager:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static rt1001foleo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static setKillWhiteList()[Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/fusionleo/LeoX/server/LeoConfig;->mKillWhiteList:Ljava/lang/String;

    const-string v1, "##"

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->mKillWhite:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3
.end method

.method public static setLeoHaptics(Landroid/content/Context;II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method

.method public static setLeoKeypressAction(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->mLeoGlobalService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bGVvX2FjdGlvbg=="

    invoke-static {v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "bGVvX2FwcA=="

    invoke-static {v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
