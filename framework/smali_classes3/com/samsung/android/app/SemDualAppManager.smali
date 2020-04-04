.class public Lcom/samsung/android/app/SemDualAppManager;
.super Ljava/lang/Object;
.source "SemDualAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemDualAppManager$SepVersionInt;,
        Lcom/samsung/android/app/SemDualAppManager$DualAppVersion;
    }
.end annotation


# static fields
.field private static final ACTION3_PACKAGE_NAME:Ljava/lang/String; = "com.actionlauncher.playstore"

.field private static final ADW_PACKAGE_NAME:Ljava/lang/String; = "org.adw.launcher"

.field private static final AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

.field private static final BLACKBERRYMESSENGER_PACKAGE_NAME:Ljava/lang/String; = "com.bbm"

.field private static final CHINA_SALES_CODES:[Ljava/lang/String;

.field public static final DA_PROFILE_ID_PROPERTY_NAME:Ljava/lang/String; = "sys.dualapp.profile_id"

.field private static final DCM_LIVEUX_PACKAGE_NAME:Ljava/lang/String; = "com.nttdocomo.android.dhome"

.field static final DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

.field static final DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

.field public static final DUAL_CALLER_PACKAGE_NAME:Ljava/lang/String; = "callerPackage"

.field public static final DUAL_ORI_SHORTCUT_COMPONENT:Ljava/lang/String; = "dual_shortcut_component"

.field private static final FACEBOOKMESSENGER_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.orca"

.field private static final FACEBOOK_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.katana"

.field private static final GOOGLE_QUICKSEARCHBOX_PACKGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final HIKE_PACKAGE_NAME:Ljava/lang/String; = "com.bsb.hike"

.field private static final HOLO_PACKAGE_NAME:Ljava/lang/String; = "com.mobint.hololauncher"

.field private static final ICQ_PACKAGE_NAME:Ljava/lang/String; = "com.icq.mobile.client"

.field private static final KAKAOTALK_PACKAGE_NAME:Ljava/lang/String; = "com.kakao.talk"

.field private static final KAKAOTALK_SETTINGS_THEME_URI:Ljava/lang/String; = "kakaotalk://settings/theme/"

.field private static final KIK_PACKAGE_NAME:Ljava/lang/String; = "kik.android"

.field private static final LINE_PACKAGE_NAME:Ljava/lang/String; = "jp.naver.line.android"

.field public static final MAX_DUALAPP_ID:I = 0x63

.field private static final MICROSOFT_PACKAGE_NAME:Ljava/lang/String; = "com.microsoft.launcher"

.field public static final MIN_DUALAPP_ID:I = 0x5f

.field private static final NOUGAT_PACKAGE_NAME:Ljava/lang/String; = "com.cmnlauncher"

.field private static final NOVA_PACKAGE_NAME:Ljava/lang/String; = "com.teslacoilsw.launcher"

.field private static final QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mobileqq"

.field private static final QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mobileqqi"

.field private static final SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

.field private static final SEC_DESKTOP_LAUNCHER_PACKGE_NAME:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final SEC_EASY_LAUNCHER_PACKGE_NAME:Ljava/lang/String; = "com.sec.android.app.easylauncher"

.field private static final SEC_EMERGENCY_LAUNCHER_PACKGE_NAME:Ljava/lang/String; = "com.sec.android.emergencylauncher"

.field private static final SEC_LAUNCHER_PACKGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field private static final SKYPE_PACKAGE_NAME:Ljava/lang/String; = "com.skype.raider"

.field private static final SMART3_PACKAGE_NAME:Ljava/lang/String; = "ginlemon.flowerfree"

.field private static final SNAPCHAT_PACKAGE_NAME:Ljava/lang/String; = "com.snapchat.android"

.field private static final TAG:Ljava/lang/String; = "SemDualAppManager"

.field private static final TELEGRAM_PACKAGE_NAME:Ljava/lang/String; = "org.telegram.messenger"

.field private static final VIBER_PACKAGE_NAME:Ljava/lang/String; = "com.viber.voip"

.field private static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"

.field private static final WEIBO_PACKAGE_NAME:Ljava/lang/String; = "com.sina.weibo"

.field private static final WHATSAPP_PACKAGE_NAME:Ljava/lang/String; = "com.whatsapp"

.field private static final YAHOOMESSENGER_PACKAGE_NAME:Ljava/lang/String; = "com.yahoo.mobile.client.android.im"

.field private static final YANDEX_PACKAGE_NAME:Ljava/lang/String; = "com.yandex.launcher"

.field private static final ZALO_PACKAGE_NAME:Ljava/lang/String; = "com.zing.zalo"

.field private static mContext:Landroid/content/Context;

.field private static mIsChinaModel:Z

.field private static mSalesCode:Ljava/lang/String;

.field private static mService:Lcom/samsung/android/app/ISemDualAppManager;

.field private static sDAInstance:Lcom/samsung/android/app/SemDualAppManager;


# instance fields
.field private mDuplicateInitialIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    const-string v1, "CHN"

    const-string v2, "CHM"

    const-string v3, "CBK"

    const-string v4, "CTC"

    const-string v5, "CHU"

    const-string v6, "CHC"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->isChinaModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/SemDualAppManager;->mIsChinaModel:Z

    const-string v1, "com.facebook.katana"

    const-string v2, "com.whatsapp"

    const-string v3, "com.facebook.orca"

    const-string v4, "com.tencent.mobileqq"

    const-string v5, "com.tencent.mobileqqi"

    const-string v6, "com.tencent.mm"

    const-string v7, "com.sina.weibo"

    const-string v8, "com.skype.raider"

    const-string v9, "com.viber.voip"

    const-string/jumbo v10, "jp.naver.line.android"

    const-string v11, "com.bbm"

    const-string/jumbo v12, "org.telegram.messenger"

    const-string v13, "com.kakao.talk"

    const-string v14, "com.bsb.hike"

    const-string v15, "com.icq.mobile.client"

    const-string v16, "com.yahoo.mobile.client.android.im"

    const-string v17, "com.zing.zalo"

    const-string v18, "com.snapchat.android"

    const-string/jumbo v19, "kik.android"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

    const-string v0, "com.tencent.mm"

    const-string v1, "com.tencent.mobileqq"

    const-string v2, "com.sina.weibo"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

    const-string v1, "com.sec.android.app.launcher"

    const-string v2, "com.sec.android.app.easylauncher"

    const-string v3, "com.sec.android.emergencylauncher"

    const-string v4, "com.sec.android.app.desktoplauncher"

    const-string v5, "com.google.android.googlequicksearchbox"

    const-string v6, "com.teslacoilsw.launcher"

    const-string v7, "com.actionlauncher.playstore"

    const-string v8, "com.mobint.hololauncher"

    const-string v9, "ginlemon.flowerfree"

    const-string v10, "com.cmnlauncher"

    const-string v11, "com.yandex.launcher"

    const-string v12, "com.nttdocomo.android.dhome"

    const-string v13, "com.microsoft.launcher"

    const-string/jumbo v14, "org.adw.launcher"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

    const-string v0, "com.sec.android.app.launcher"

    const-string v1, "com.sec.android.app.easylauncher"

    const-string v2, "com.sec.android.emergencylauncher"

    const-string v3, "com.sec.android.app.desktoplauncher"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    return-void
.end method

.method private addResolveInfoFromOtherUser(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverActivity;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/app/ResolverActivity;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p4

    move-object/from16 v8, p5

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v9

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v10

    if-eqz v1, :cond_5

    invoke-static {v9}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v9

    :cond_1
    move v11, v0

    const/4 v2, 0x0

    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    move-object v12, v0

    if-eqz v12, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v10, v12, v0, v11}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    move-object v1, v0

    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v2, v0

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    move-object v13, v1

    move-object v0, v2

    instance-of v1, v8, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_3

    move-object v1, v8

    check-cast v1, Landroid/content/pm/LabeledIntent;

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ResolveInfo;->icon:I

    iget v2, v0, Landroid/content/pm/ResolveInfo;->icon:I

    iput v2, v0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    :cond_3
    if-eqz v13, :cond_4

    new-instance v14, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, p1

    invoke-virtual {v0, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v2, p2

    move-object v3, v8

    move-object v4, v0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v2, p3

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object/from16 v15, p1

    move-object/from16 v2, p3

    :goto_2
    return-void

    :cond_5
    :goto_3
    move-object/from16 v15, p1

    move-object/from16 v2, p3

    return-void
.end method

.method public static drawDualAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x55

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0, v3}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getAllInstalledWhitelistedPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/app/ISemDualAppManager;->getAllInstalledWhitelistedPackages()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "SemDualAppManager"

    const-string v3, "getAllInstalledWhitelistedPackages : RemoteException occured"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "SemDualAppManager"

    const-string v2, "getAllInstalledWhitelistedPackages : Can not connect to DualAppManagerService"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getAllWhitelistedPackages()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/app/ISemDualAppManager;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SemDualAppManager"

    const-string v4, "getAllWhitelistedPackages : RemoteException occured"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const-string v2, "SemDualAppManager"

    const-string v3, "getAllWhitelistedPackages : null returned. Return default"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/samsung/android/app/SemDualAppManager;->mIsChinaModel:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

    return-object v2

    :cond_1
    sget-object v2, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

    return-object v2

    :cond_2
    return-object v0
.end method

.method public static getDockedStackUserID()I
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/app/ISemDualAppManager;->getDockedStackUserID()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SemDualAppManager"

    const-string v3, "getDockedStackUserID : RemoteException occured"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getDualAppProfileId()I
    .locals 3

    const/16 v0, -0x2710

    const-string/jumbo v1, "sys.dualapp.profile_id"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return v0
.end method

.method private static getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    if-nez v0, :cond_0

    const-string v0, "dual_app"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    return-object v0
.end method

.method public static getDualAppVersion()I
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const/4 v1, 0x0

    const v2, 0x138e4

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const v3, 0x13a74

    if-lt v0, v2, :cond_1

    if-ge v0, v3, :cond_1

    const/16 v1, 0x64

    return v1

    :cond_1
    const v2, 0x15f90

    if-lt v0, v3, :cond_2

    if-ge v0, v2, :cond_2

    const/16 v1, 0x6e

    return v1

    :cond_2
    if-lt v0, v2, :cond_3

    const/16 v1, 0xc8

    return v1

    :cond_3
    const v2, 0x186a0

    if-lt v0, v2, :cond_4

    const/16 v1, 0xd2

    return v1

    :cond_4
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/app/SemDualAppManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/SemDualAppManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemDualAppManager;-><init>()V

    sput-object v1, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    sput-object p0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    return-object v0
.end method

.method public static isAfwSupportLauncher(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isChinaDualApp(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mobileqqi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sina.weibo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isChinaModel()Z
    .locals 6

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    sget-object v5, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isChooserRequired(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mm.plugin.base.stub.WXPayEntryActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sina.weibo.SSOActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isDualAppId(I)Z
    .locals 1

    const/16 v0, 0x5f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDualAppIdInternal(I)Z
    .locals 1

    const/16 v0, 0x5f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDualAppVersionSupported(I)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppVersion()I

    move-result v0

    if-lt v0, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isInstalledWhitelistedPackage(Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2, p0}, Lcom/samsung/android/app/ISemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v3

    const-string v4, "SemDualAppManager"

    const-string/jumbo v5, "isInstalledWhitelistedPackage : RemoteException occured"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "SemDualAppManager"

    const-string/jumbo v4, "isInstalledWhitelistedPackage : Can not connect to DualAppManagerService"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "com.kakao.talk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "kakaotalk://settings/theme/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSamsungLauncher(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static shouldAddUserId(Landroid/net/Uri;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    const-string/jumbo v3, "media"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.contacts"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.calendar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "downloads"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.providers.downloads.documents"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public static updateDualAppData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/app/ISemDualAppManager;->updateDualAppData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "SemDualAppManager"

    const-string/jumbo v3, "updateDualAppData : RemoteException occured"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "SemDualAppManager"

    const-string/jumbo v2, "updateDualAppData : Can not connect to DualAppManagerService"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public addDualAppAccounts(Landroid/widget/LinearLayout;II)V
    .locals 18

    move-object/from16 v1, p1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v0

    move v2, v0

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    move-object v3, v0

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v4, v0

    invoke-virtual {v3, v2}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    move-object v5, v0

    array-length v0, v5

    move v6, v0

    if-nez v6, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    move-object v7, v0

    array-length v0, v7

    move v8, v0

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    move-object v9, v0

    const/4 v10, 0x0

    move v0, v10

    :goto_0
    move v11, v0

    if-ge v11, v6, :cond_8

    aget-object v0, v5, v11

    move-object v12, v0

    const/4 v0, 0x0

    move v13, v10

    :goto_1
    if-ge v13, v8, :cond_3

    iget-object v14, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    aget-object v15, v7, v13

    iget-object v15, v15, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    aget-object v14, v7, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object v0, v14

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move-object v13, v0

    if-nez v13, :cond_4

    nop

    move/from16 v14, p3

    move/from16 v16, v2

    goto/16 :goto_7

    :cond_4
    const/4 v14, 0x0

    move-object v15, v14

    :try_start_1
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    iget-object v14, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14, v10, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sget-object v14, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    iget-object v10, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v10}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget v10, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move/from16 v16, v2

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v14, v10, v2}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v14, v2, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v15, v2

    goto :goto_3

    :cond_5
    move/from16 v16, v2

    iget v2, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v14, v2, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object v0, v2

    move-object v15, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_6
    move/from16 v16, v2

    :goto_3
    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v16, v2

    :goto_4
    :try_start_3
    const-string v2, "SemDualAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid icon id for account type "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_3
    move-exception v0

    move/from16 v16, v2

    :goto_5
    const-string v2, "SemDualAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad package name for account type "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_6
    if-nez v15, :cond_7

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v15, v0

    :cond_7
    move/from16 v2, p2

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v10, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v10, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move/from16 v14, p3

    :try_start_4
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/4 v2, 0x0

    invoke-virtual {v15, v2, v2, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x0

    invoke-virtual {v0, v15, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_7
    add-int/lit8 v0, v11, 0x1

    move/from16 v2, v16

    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto :goto_8

    :cond_8
    move/from16 v14, p3

    goto :goto_9

    :catch_5
    move-exception v0

    move/from16 v14, p3

    :goto_8
    const-string v2, "SemDualAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in addDualAppAccounts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void
.end method

.method public clearDuplicateMaps()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public isDuplicateEntry(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverActivity;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/app/ResolverActivity;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    iget-object v1, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    instance-of v2, p5, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_1

    iget-object v2, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v2, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChooserRequired(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    iget-object v2, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChinaDualApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "mqqapi"

    invoke-virtual {p5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p5}, Lcom/samsung/android/app/SemDualAppManager;->isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/SemDualAppManager;->addResolveInfoFromOtherUser(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverActivity;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    :cond_6
    return v0
.end method

.method public isSupported()Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public isWhitelistedPackage(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_5

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v1
.end method
