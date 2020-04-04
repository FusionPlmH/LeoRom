.class public Lcom/samsung/android/settings/display/SecDisplayUtils;
.super Ljava/lang/Object;
.source "SecDisplayUtils.java"


# static fields
.field public static final CRUISER_PROJECT:Z

.field public static final DREAM2_PROJECT:Z

.field private static final PHONE_DENSITY_BASE_PIXEL:[F

.field private static final SIGNATURES:[Landroid/content/pm/Signature;

.field public static mListEdgeColorBalanceImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mProductName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ro.product.device"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const-string v1, "dream2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const-string v3, "SC-03J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const-string v3, "SCV35"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->DREAM2_PROJECT:Z

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const-string v3, "cruiser"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->CRUISER_PROJECT:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    new-array v0, v1, [Landroid/content/pm/Signature;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v3, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    invoke-direct {v1, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->PHONE_DENSITY_BASE_PIXEL:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x40900000    # 4.5f
    .end array-data
.end method

.method public static ApplyForcedDisplayDensity(Landroid/content/Context;I)V
    .locals 10

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_size_forced"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    array-length v7, v5

    if-le v7, v6, :cond_0

    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    move v0, v7

    if-eqz v5, :cond_1

    array-length v7, v5

    if-le v7, v6, :cond_1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    move v1, v6

    :cond_2
    if-eq v0, v4, :cond_3

    if-ne v1, v4, :cond_4

    :cond_3
    :try_start_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    const-string v3, "SecDisplayUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScreenSizeinformation() size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v4, Landroid/graphics/Point;->x:I

    move v0, v3

    iget v3, v4, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v3

    nop

    :cond_4
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v5, v0

    move v6, v1

    move v7, p1

    invoke-interface/range {v3 .. v9}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensity(IIIIZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "SecDisplayUtils"

    const-string/jumbo v5, "setForcedDisplaySizeDensity() exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :catch_1
    move-exception v3

    const-string v4, "SecDisplayUtils"

    const-string v5, "getInitialDisplaySize() exception!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static backupDefaultScreenBrightnessMode(Landroid/content/Context;)V
    .locals 6

    const-string v0, "SecDisplayUtils"

    const-string v1, "[stpoc] backupDefaultScreenBrightnessMode"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "display_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "isBackupBrightnessMode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "SCREEN_BRIGHTNESS_MODE"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "isBackupBrightnessMode"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_brightness"

    const/16 v4, 0x80

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "SecDisplayUtils"

    const-string v3, "[stpoc] backupDefaultScreenBrightnessMode"

    invoke-static {v1, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static changeFontSize(Landroid/content/Context;II)I
    .locals 4

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSize(Landroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, p2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    :pswitch_3
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :pswitch_4
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    :cond_0
    :goto_0
    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->changeFontSizeDbAndNotifyChanged(Landroid/content/Context;III)I

    move-result v3

    return v3

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static changeFontSizeDbAndNotifyChanged(Landroid/content/Context;III)I
    .locals 4

    const-string v0, "SecDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeFontSizeDbAndNotifyChanged() previousIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / targetIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontScale(Landroid/content/Context;I)F

    move-result v0

    if-ltz p2, :cond_1

    if-lt p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeFontSizeDbAndNotifyChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "large_font"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "SecDisplayUtils"

    const-string v3, "com.samsung.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    return p2

    :cond_1
    :goto_0
    const-string v1, "SecDisplayUtils"

    const-string v2, "changeFontSizeDbAndNotifyChanged() invalid index"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method public static deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAccessibilityVisionMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    const-string v2, "greyscale_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120717

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "high_contrast"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120f1f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v2, "color_blind"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f12050a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportedColorLens(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "color_lens_switch"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f12050b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v2, "accessibility_display_inversion_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f120035

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public static getAutoBrightnessSetting(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportLightSensor(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string v1, "SecDisplayUtils"

    const-string v2, "setAutoBrightnessSetting() - Device not support light sensor or context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getBixbyRangeOfScreenZoom(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->PHONE_DENSITY_BASE_PIXEL:[F

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v0

    array-length v1, v0

    return v1
.end method

.method public static getBixbyScreenResolution(Landroid/content/Context;)I
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_size_forced"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v6, v5

    if-le v6, v4, :cond_0

    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v6, v5, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v6

    invoke-interface {v6, v3, v5}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget v1, v5, Landroid/graphics/Point;->x:I

    iget v2, v5, Landroid/graphics/Point;->y:I

    :cond_2
    const/16 v3, 0x5a0

    if-lt v1, v3, :cond_3

    const/4 v3, 0x3

    return v3

    :cond_3
    const/16 v3, 0x2d0

    if-le v1, v3, :cond_4

    const/16 v3, 0x438

    if-gt v1, v3, :cond_4

    const/4 v3, 0x2

    return v3

    :cond_4
    return v4

    :catch_0
    move-exception v3

    const/4 v4, -0x1

    return v4
.end method

.method public static getBixbyScreenSaverEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screensaver_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public static getBixbyScreenZoom(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/settings/display/SecDisplayUtils;->PHONE_DENSITY_BASE_PIXEL:[F

    invoke-static {p0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget v4, v1, v3

    if-ne v2, v4, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v3, v0, 0x1

    return v3
.end method

.method public static getBixbyWhiteColorBalance(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_preset_index"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    rsub-int/lit8 v1, v0, 0x5

    return v1
.end method

.method public static getBlueLightFilterSetting(Landroid/content/Context;)I
    .locals 8

    if-nez p0, :cond_0

    const-string v0, "SecDisplayUtils"

    const-string v1, "getBlueLightFilterSetting() - context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SecDisplayUtils"

    const-string v1, "getBlueLightFilterSetting() - Disabled by dex"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "greyscale_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    const-string v1, "SecDisplayUtils"

    const-string v2, "getBlueLightFilterSetting() - Disabled by accessibility - Grayscale"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "high_contrast"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-eqz v3, :cond_5

    const-string v1, "SecDisplayUtils"

    const-string v2, "getBlueLightFilterSetting() - Disabled by accessibility - Negative Color"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x6

    return v1

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "color_blind"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    if-eqz v4, :cond_7

    const-string v1, "SecDisplayUtils"

    const-string v2, "getBlueLightFilterSetting() - Disabled by accessibility - Color Adjustment"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x7

    return v1

    :cond_7
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportedColorLens(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "color_lens_switch"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v1

    goto :goto_3

    :cond_8
    move v5, v2

    :goto_3
    if-eqz v5, :cond_9

    const-string v1, "SecDisplayUtils"

    const-string v2, "getBlueLightFilterSetting() - Disabled by accessibility - Color Lens"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    return v1

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "blue_light_filter"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v1, :cond_a

    return v1

    :cond_a
    return v2
.end method

.method public static getClockPackageName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    const-string v2, "com.sec.android.app.clockpackage"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Clock_ConfigReplacePackage"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static getCurrentDensity(Landroid/content/Context;)I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_density_forced"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SecDisplayUtils"

    const-string v4, "getInitialDisplaySize() exception!!!"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :goto_0
    const-string v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentDensity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getCurrentEdgeColorBalanceIndexForStatusLogging(Landroid/content/Context;)I
    .locals 9

    const-string v0, "mDNIe"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentSeekbarIndex(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SEC_EDGE_COLOR_BALANCE_CASE_D1_INDEX"

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const-string v3, "/efs/etc/poc/mdnie_info"

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromFile(Ljava/lang/String;)I

    move-result v3

    const-string v6, "SecDisplayUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tempDB : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " /tempEFS : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v2, v5, :cond_1

    if-ne v3, v5, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v3, -0x1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SEC_EDGE_COLOR_BALANCE_CASE_D1_INDEX"

    invoke-static {v5, v6, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public static getCurrentFontName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontNameFromSystem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    return-object v1

    :cond_1
    const-string v1, "persist.sys.flipfontpath"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121409

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f121593

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    const-string v2, "Rosemary"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v4, 0x7f1215a0

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v2, "Chococooky"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v5, 0x7f121597

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v2, "Cooljazz"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v6, 0x7f121598

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v2, "HelveticaNeueRegular"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "Helvetica S"

    goto/16 :goto_0

    :cond_7
    const-string v2, "Samsungsans"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "Samsung Sans"

    goto/16 :goto_0

    :cond_8
    const-string v2, "SamsungOneUI-Regular"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "SamsungOne"

    goto/16 :goto_0

    :cond_9
    const-string v2, "Applemint"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121596

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v2, "Tinkerbell"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1215a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v2, "Shaonv"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121599

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v2, "Kaiti"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12159b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v2, "Miao"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12159d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string v2, "UDRGothic"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12159c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const-string v2, "UDMincho"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12159e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    const-string v2, "Pop"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v7, 0x7f12159f

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    const-string v2, "arjpopb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_12
    const-string v2, "Cool"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_13
    const-string v2, "Rose"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_14
    const-string v2, "Choco"

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_15
    const-string v2, "Foundation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12159a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_16
    invoke-static {p0, v3}, Landroid/graphics/Typeface;->getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getCurrentResolution(Landroid/content/Context;)I
    .locals 9

    const/4 v0, 0x2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_size_forced"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x5a0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    move v3, v5

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v6

    invoke-interface {v6, v5, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    const-string v5, "SecDisplayUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getScreenSizeinformation() size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget v3, v1, Landroid/graphics/Point;->x:I

    :goto_1
    if-lt v3, v4, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    const/16 v4, 0x2d0

    if-le v3, v4, :cond_3

    const/16 v4, 0x438

    if-gt v3, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const-string v4, "SecDisplayUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentResolution: width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "currentResolution = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v4

    const-string v5, "SecDisplayUtils"

    const-string v6, "getInitialDisplaySize() exception!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    return v5
.end method

.method public static getCurrentSeekbarIndex(Landroid/content/Context;)I
    .locals 9

    const-string v0, "/efs/FactoryApp/poc_user"

    const/4 v1, 0x3

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    const-string v4, "3"

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v7

    :cond_0
    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_2
    move-exception v5

    :cond_1
    :goto_2
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_3
    goto :goto_4

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stpoc] getCurrentSeekbarIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static getDeXTimeoutNewEntry(Landroid/content/Context;J)Ljava/lang/String;
    .locals 24

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    const-wide/16 v4, 0x3c

    div-long v6, v2, v4

    div-long v8, v6, v4

    const-wide/16 v10, 0x18

    div-long v12, v8, v10

    const-wide/16 v14, 0x7

    div-long v16, v12, v14

    new-array v0, v0, [J

    const/16 v18, 0x0

    aput-wide v16, v0, v18

    rem-long v14, v12, v14

    const/4 v4, 0x1

    aput-wide v14, v0, v4

    rem-long v10, v8, v10

    const/4 v5, 0x2

    aput-wide v10, v0, v5

    const-wide/16 v10, 0x3c

    rem-long v14, v6, v10

    const/4 v5, 0x3

    aput-wide v14, v0, v5

    rem-long v10, v2, v10

    const/4 v5, 0x4

    aput-wide v10, v0, v5

    const-string v5, ""

    move-object v10, v5

    move/from16 v5, v18

    :goto_0
    array-length v11, v0

    if-ge v5, v11, :cond_2

    move-wide/from16 v19, v2

    aget-wide v2, v0, v5

    const-wide/16 v14, 0x0

    cmp-long v11, v2, v14

    if-lez v11, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move-object/from16 v21, v0

    aget v0, v1, v5

    move-object/from16 v22, v1

    long-to-int v1, v2

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Object;

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v18

    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v2, v19

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move-wide/from16 v19, v2

    const-string v0, "SecDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeoutNewEntry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :array_0
    .array-data 4
        0x7f10001a
        0x7f100016
        0x7f100017
        0x7f100018
        0x7f100019
    .end array-data
.end method

.method public static getDexScreenTimoutEntryandValue(Landroid/content/Context;JI)[Ljava/lang/CharSequence;
    .locals 16

    move-wide/from16 v0, p1

    move/from16 v2, p3

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03005e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f03005f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isInDefaultTimeoutList([Ljava/lang/CharSequence;J)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_6

    const/4 v9, -0x1

    const/4 v11, 0x0

    :goto_0
    array-length v12, v6

    const/4 v13, -0x1

    if-ge v11, v12, :cond_2

    aget-object v12, v5, v11

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v12, v6, v11

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v12, v6, v11

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v12, v0, v14

    if-gez v12, :cond_1

    if-ne v9, v13, :cond_0

    move v12, v11

    goto :goto_1

    :cond_0
    move v12, v9

    :goto_1
    move v9, v12

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v11, 0x1

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    if-eq v9, v13, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDeXTimeoutNewEntry(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    if-ne v2, v3, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    return-object v10

    :cond_4
    if-ne v2, v4, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    return-object v10

    :cond_5
    return-object v10

    :cond_6
    if-ne v2, v3, :cond_7

    return-object v5

    :cond_7
    if-ne v2, v4, :cond_8

    return-object v6

    :cond_8
    return-object v10
.end method

.method public static getDualDisplayStatus()I
    .locals 8

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDualDisplay()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    move v0, v1

    :try_start_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    const-string v5, "SecDisplayUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScreenSizeinformation() size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v2, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    nop

    const/16 v1, 0x438

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v4

    :catch_0
    move-exception v2

    const-string v3, "SecDisplayUtils"

    const-string v4, "getInitialDisplaySize() exception!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v1
.end method

.method public static getEdgeColorBalanceCurrentUser(Landroid/content/Context;)I
    .locals 9

    const-string v0, "/efs/FactoryApp/poc_user"

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getEdgeColorBalanceFactoryDefaultIndex(Landroid/content/Context;)I

    move-result v1

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    const-string v4, "0"

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SecDisplayUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[stpoc] get_poc_user : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v6

    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_3
    const-string v5, "SecDisplayUtils"

    const-string v6, "[stpoc] Exception in getEdgeColorBalanceCurrentUser"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_2
    move-exception v5

    :cond_1
    :goto_2
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_3
    goto :goto_4

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stpoc] getEdgeColorBalanceCurrentUser : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static getEdgeColorBalanceEstimatedTime(Lcom/samsung/android/hardware/display/SemMdnieManager;)J
    .locals 8

    const-string v0, "SecDisplayUtils"

    const-string v1, "[stpoc] check poc state"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->isMdniePocFused()Z

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdnieEdgeColorBalanceSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->isMdnieFisrtUsed()Z

    move-result v2

    const-string v3, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[stpoc] check poc state : 1.Fused-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", 2.Supported-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", 3.FirstUsed-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v3

    const-wide/16 v4, 0x2710

    if-eqz v3, :cond_0

    const-string v3, "SecDisplayUtils"

    const-string v6, "[stpoc] Estimated Time : isEdgeColorBalanceDream1NA"

    invoke-static {v3, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v4

    :cond_0
    const-wide/32 v6, 0x668a0

    if-nez v1, :cond_2

    if-nez v2, :cond_1

    const-string v3, "SecDisplayUtils"

    const-string v4, "[stpoc] Estimated Time : case 3 - isMdnieFisrtUsed() false"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v6

    :cond_1
    const-string v3, "SecDisplayUtils"

    const-string v6, "[stpoc] Estimated Time : case 3 - isMdnieFisrtUsed() true"

    invoke-static {v3, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v4

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    if-ne v1, v3, :cond_3

    if-nez v2, :cond_3

    const-string v3, "SecDisplayUtils"

    const-string v4, "[stpoc] Estimated Time : case 2 - isMdnieFisrtUsed() false"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v6

    :cond_3
    const-string v3, "SecDisplayUtils"

    const-string v6, "[stpoc] Estimated Time : case 1 or case 2 - isMdnieFisrtUsed() true"

    invoke-static {v3, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v4
.end method

.method public static getEdgeColorBalanceFactoryDefaultIndex(Landroid/content/Context;)I
    .locals 9

    const-string v0, "/efs/FactoryApp/poc_info"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    const-string v4, "0"

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SecDisplayUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[stpoc] get_poc_info : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v7

    :cond_0
    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_3
    const-string v5, "SecDisplayUtils"

    const-string v6, "[stpoc] Exception in getEdgeColorBalanceFactoryDefaultIndex"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_2
    move-exception v5

    :cond_1
    :goto_2
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_3
    goto :goto_4

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stpoc] getEdgeColorBalanceFactoryDefaultIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    if-gt v1, v2, :cond_3

    const/4 v2, -0x1

    if-ge v1, v2, :cond_4

    :cond_3
    const/4 v1, 0x0

    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stpoc] getEdgeColorBalanceFactoryDefaultIndex value correction : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public static getEdgeColorBalanceImageFromArray(I)I
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getEdgeColorBalanceUserIndexTemp(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_poc_index"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stpoc] getEdgeColorBalanceUserIndexTemp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getFontIndex(Landroid/content/Context;F)I
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportBigFont(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, p1

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returning  font index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getFontNameFromSystem(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    sub-int/2addr v3, v0

    if-lez v3, :cond_0

    array-length v3, v2

    sub-int/2addr v3, v0

    aget-object v1, v2, v3

    :cond_0
    const-string v0, "monotype"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f121593

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_2
    return-object v1
.end method

.method public static getFontScale(Landroid/content/Context;I)F
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportBigFont(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    array-length v1, v0

    if-lt p1, v1, :cond_1

    array-length v1, v0

    add-int/lit8 p1, v1, -0x1

    :cond_1
    aget-object v1, v0, p1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returning  font scale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getFontSize(Landroid/content/Context;)F
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportBigFont(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    array-length v1, v0

    int-to-float v1, v1

    return v1
.end method

.method public static getFontSizeChangedIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getMaxFontSize(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportBigFont(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    return v0
.end method

.method public static getMaxTimeOut(Landroid/content/Context;)J
    .locals 5

    const-wide/16 v0, -0x1

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ATT"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "AIO"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x1b7740

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/32 v0, 0x927c0

    :goto_1
    if-eqz v2, :cond_2

    const-string v3, "j3y17qlte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/32 v0, 0x927c0

    :cond_2
    return-wide v0
.end method

.method public static getNightModeSetting(Landroid/content/Context;)I
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "SecDisplayUtils"

    const-string v1, "getNightModeSetting() - context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNightThemeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SecDisplayUtils"

    const-string v1, "getNightModeSetting() - Disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNightThemeDisabledReason(Landroid/content/Context;)I

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public static getNightThemeDisabledReason(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/android/settings/Utils;->isHightContrastFontsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isCurrentThemeSupportNightTheme(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    return v2

    :cond_1
    const/4 v2, 0x3

    return v2
.end method

.method public static getNightThemeDisabledReasonToastText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNightThemeDisabledReason(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, ""

    return-object v1

    :pswitch_0
    const v1, 0x7f1215ba

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    const v1, 0x7f1215bb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPocketModeDefaultValue()I
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_DEFAULT_POCKET_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getProperDensities(Landroid/content/Context;[F)[I
    .locals 7

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDualDisplayDensities(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperTabletDensities(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    array-length v0, p1

    new-array v0, v0, [I

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    nop

    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    aget v4, p1, v1

    const/high16 v5, 0x43200000    # 160.0f

    mul-float/2addr v4, v5

    aget v5, v3, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v0, v1

    const-string v4, "SecDisplayUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertedDensity["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getProperDualDisplayDensities(Landroid/content/Context;)[I
    .locals 15

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, -0x1

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v6

    move v6, v2

    move v2, v5

    :goto_0
    :try_start_1
    array-length v7, v0

    if-ge v2, v7, :cond_1

    aget v7, v0, v2

    if-ne v7, v3, :cond_0

    move v6, v2

    :cond_0
    aget v7, v0, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v7, v4

    const-wide v9, 0x3feb333333333333L    # 0.85

    mul-double/2addr v7, v9

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v9, v4

    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v9, v11

    const/4 v4, 0x0

    move v11, v4

    move v4, v5

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v12, v12

    cmpl-double v12, v12, v7

    if-ltz v12, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v12, v12

    cmpg-double v12, v12, v9

    if-gtz v12, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    mul-int/2addr v12, v3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    div-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v11, "SecDisplayUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ds convertedDensity["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v12

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [I

    nop

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return-object v4

    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v4

    move v6, v2

    move-object v2, v4

    :goto_3
    const-string v4, "SecDisplayUtils"

    const-string v5, "getInitialDisplaySize() exception!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    nop

    :array_0
    .array-data 4
        0x168
        0x1a4
        0x1cc
    .end array-data
.end method

.method public static getProperTabletDensities(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    move-object v1, v0

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    move-object v2, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    const/4 v4, 0x1

    const/4 v0, -0x1

    move v5, v0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v5, v7

    const/16 v7, 0xa0

    if-ne v5, v7, :cond_1

    move v7, v4

    move v4, v6

    :goto_0
    :try_start_1
    array-length v8, v2

    if-ge v4, v8, :cond_3

    aget v8, v2, v4

    if-ne v8, v5, :cond_0

    move v7, v4

    :cond_0
    aget v8, v2, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    move v7, v4

    move v4, v6

    :goto_1
    array-length v8, v1

    if-ge v4, v8, :cond_3

    aget v8, v1, v4

    if-ne v8, v5, :cond_2

    move v7, v4

    :cond_2
    aget v8, v1, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    nop

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v8, v4

    const-wide v10, 0x3feb333333333333L    # 0.85

    mul-double/2addr v8, v10

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v10, v4

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v10, v12

    const-string v4, "ro.product.first_api_level"

    invoke-static {v4, v6}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v12, 0x0

    nop

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-double v13, v13

    cmpl-double v13, v13, v8

    if-ltz v13, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v10

    if-gtz v13, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int/2addr v13, v5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    div-int/2addr v13, v14

    const/16 v12, 0x21c

    if-lt v13, v12, :cond_4

    const/16 v12, 0x1c

    if-ge v4, v12, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "SecDisplayUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "convertedDensity["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "] : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v12, v13

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    return-object v0

    :catch_1
    move-exception v0

    move v7, v4

    :goto_4
    const-string v4, "SecDisplayUtils"

    const-string v6, "getInitialDisplaySize() exception!!!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :array_0
    .array-data 4
        0xd5
        0xf0
        0x118
        0x140
        0x168
        0x1a4
        0x1e0
        0x21c
    .end array-data

    :array_1
    .array-data 4
        0x8c
        0xa0
        0xb4
        0xd2
        0xf0
    .end array-data
.end method

.method public static getSamsungNTTHomeDefaultBrightness(Landroid/content/Context;)[I
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ConfigBrightnessToSpecificApp"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAG_CSCFEATURE_SETTING_CONFIGBRIGHTNESSTOSPECIFICAPP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    array-length v3, v2

    new-array v0, v3, [I

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v3

    const-string v4, "SecDisplayUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "default_brightness [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ]  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getScreenTimeoutList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    aget-object v5, v2, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static getScreenTimoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v8

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getMaxTimeOut(Landroid/content/Context;)J

    move-result-wide v10

    const/4 v12, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0300d5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0300d6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    move v5, v12

    move/from16 v12, v16

    :goto_1
    move v6, v12

    array-length v12, v14

    move/from16 v18, v3

    if-ge v6, v12, :cond_4

    aget-object v12, v14, v6

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    cmp-long v12, v19, v10

    if-gtz v12, :cond_2

    aget-object v12, v13, v6

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v12, v14, v6

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v14, v3, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isInDefaultTimeoutList([Ljava/lang/CharSequence;J)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v19

    if-gez v3, :cond_3

    const/4 v3, -0x1

    if-ne v5, v3, :cond_1

    move v3, v6

    goto :goto_2

    :cond_1
    move v3, v5

    :goto_2
    move v5, v3

    goto :goto_3

    :cond_2
    move-object/from16 v21, v4

    :cond_3
    :goto_3
    add-int/lit8 v12, v6, 0x1

    move/from16 v3, v18

    move-object/from16 v4, v21

    goto :goto_1

    :cond_4
    move-object/from16 v21, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v22, v10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getTimeoutNewEntry(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-eq v5, v4, :cond_5

    invoke-virtual {v15, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    const/4 v6, 0x1

    if-lez v4, :cond_7

    invoke-static {v14, v8, v9}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isInDefaultTimeoutList([Ljava/lang/CharSequence;J)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-eqz v4, :cond_7

    move/from16 v4, v16

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_6

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getTimeoutNewEntry(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v16

    const v6, 0x7f120d77

    invoke-virtual {v0, v6, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v6, "SecDisplayUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v3

    const-string v3, "add adminTimeout: index : "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  adminTimeout  "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "  timeout"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    move-object/from16 v24, v3

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v24, v3

    :goto_5
    if-eqz v21, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    move-object/from16 v6, v21

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v11

    if-nez v3, :cond_8

    const-wide v11, 0x7fffffffffffffffL

    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    nop

    :goto_6
    move/from16 v25, v16

    move-object/from16 v26, v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v27, v5

    move/from16 v5, v25

    if-ge v5, v3, :cond_a

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v3, v16, v11

    if-gtz v3, :cond_9

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v16, v5, 0x1

    move-object/from16 v3, v26

    move/from16 v5, v27

    goto :goto_6

    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_d

    move-object/from16 v3, p1

    move-object v15, v4

    move-object v7, v10

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v5, v16, v11

    if-gtz v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v28, v4

    const-string v4, "screen_off_timeout"

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v4, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_7

    :cond_b
    move-object/from16 v28, v4

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, v11

    if-nez v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v11, v12}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_c
    :goto_7
    move-object/from16 v7, v30

    goto :goto_8

    :cond_d
    move-object/from16 v29, v6

    goto :goto_8

    :cond_e
    move/from16 v27, v5

    move-object/from16 v29, v21

    :goto_8
    if-ne v1, v2, :cond_f

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    return-object v3

    :cond_f
    move/from16 v3, v18

    if-ne v1, v3, :cond_10

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    return-object v4

    :cond_10
    const/4 v4, 0x0

    return-object v4
.end method

.method public static getScreenZoomInfo(Landroid/content/Context;)[I
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperTabletDensities(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {p0, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    aput v3, v0, v2

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v3

    nop

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v4, 0x1

    aput v2, v0, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static getSelectedFontSize(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->updateFontSizeByFontScale(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportBigFont(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ltz v0, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "font_size"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "font_size"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static getStringFromFile(Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x80

    new-array v3, v2, [B

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_0

    aput-byte v6, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    goto/16 :goto_6

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    goto/16 :goto_5

    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v5, v2

    if-lez v5, :cond_2

    new-instance v2, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v6, v5, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    move v4, v2

    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :goto_2
    nop

    :try_start_1
    const-string v6, "SecDisplayUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , in : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    goto/16 :goto_9

    :catch_3
    move-exception v2

    const-string v6, "SecDisplayUtils"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    nop

    :try_start_3
    const-string v6, "SecDisplayUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , in : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :goto_5
    nop

    :try_start_5
    const-string v6, "SecDisplayUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , in : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :goto_6
    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :catch_4
    move-exception v6

    const-string v7, "SecDisplayUtils"

    const-string v8, "File Close error"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_7
    throw v2

    :cond_4
    :goto_8
    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_3

    :cond_5
    :goto_9
    return v4
.end method

.method public static getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x5a0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    long-to-int v2, p1

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    long-to-int v2, p1

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getTimeoutDescription(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    array-length v0, p3

    array-length v2, p2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_2

    aget-object v3, p3, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, p0, v3

    if-ltz v5, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    if-le v0, v2, :cond_3

    aget-object v1, p2, v0

    nop

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    return-object v1
.end method

.method private static getTimeoutNewEntry(Landroid/content/Context;J)Ljava/lang/String;
    .locals 15

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/16 v2, 0x3c

    div-long v4, v0, v2

    div-long v6, v4, v2

    rem-long/2addr v0, v2

    const-string v8, ""

    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-lez v11, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v9, 0x7f100022

    long-to-int v10, v6

    invoke-virtual {v11, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    long-to-int v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    rem-long/2addr v4, v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v9, v6, v2

    if-lez v9, :cond_1

    cmp-long v9, v4, v2

    if-lez v9, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v9, v4, v2

    if-lez v9, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f100023

    long-to-int v10, v4

    invoke-virtual {v3, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v9, v13, [Ljava/lang/Object;

    long-to-int v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v9, v4, v2

    if-lez v9, :cond_3

    cmp-long v9, v0, v2

    if-lez v9, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f100024

    long-to-int v10, v0

    invoke-virtual {v3, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v9, v13, [Ljava/lang/Object;

    long-to-int v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_4
    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTimeoutNewEntry : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method public static getUserEdgeColorBalanceValue(Landroid/content/Context;)I
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getEdgeColorBalanceFactoryDefaultIndex(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getEdgeColorBalanceUserIndexTemp(Landroid/content/Context;)I

    move-result v1

    rsub-int/lit8 v2, v0, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    sub-int/2addr v4, v1

    sub-int v3, v2, v4

    goto :goto_0

    :cond_0
    if-le v1, v4, :cond_1

    add-int/lit8 v4, v1, -0x3

    add-int v3, v2, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    const/4 v4, 0x6

    if-le v3, v4, :cond_3

    const/4 v3, 0x6

    :cond_3
    rsub-int/lit8 v4, v3, 0x5

    return v4
.end method

.method public static initEdgeColorBalanceImageArray(Landroid/content/Context;Lcom/samsung/android/hardware/display/SemMdnieManager;)V
    .locals 12

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getEdgeColorBalanceFactoryDefaultIndex(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getEdgeColorBalanceCurrentUser(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x5

    rsub-int/lit8 v1, v1, 0x5

    const-string v3, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[stpoc] edgeColorBalanceFactoryIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[stpoc] edgeColorBalanceUserIndexConvert : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->CRUISER_PROJECT:Z

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x6

    if-nez v3, :cond_d

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdnieEdgeColorBalanceSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isEdgeColorBalanceDream1NA()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-boolean v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->DREAM2_PROJECT:Z

    if-eqz v3, :cond_7

    const-string v3, "SecDisplayUtils"

    const-string v9, "[stpoc] initEdgeColorBalanceImageArray for D2 case"

    invoke-static {v3, v9}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v7, :cond_2

    const v2, 0x7f080305

    packed-switch v0, :pswitch_data_0

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080302

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080303

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080304

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_0
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080300

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080300

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080300

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080301

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080302

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_1
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080300

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080300

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080301

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080302

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080303

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_2
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080300

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080301

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080302

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080303

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080304

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_3
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080301

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080302

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080303

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080304

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_4
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080302

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080303

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080304

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_5
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080303

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080304

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_2
    if-ne v1, v4, :cond_3

    const v2, 0x7f08030b

    packed-switch v0, :pswitch_data_1

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080308

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080309

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08030a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_6
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080306

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080306

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080306

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080307

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080308

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_7
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080306

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080306

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080307

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080308

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080309

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_8
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080306

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080307

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080308

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080309

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_9
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080307

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080308

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080309

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08030a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_a
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080308

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080309

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08030a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_b
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080309

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08030a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_3
    if-ne v1, v6, :cond_4

    const v2, 0x7f080311

    packed-switch v0, :pswitch_data_2

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08030e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08030f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080310

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_c
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_d
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_e
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08030f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080310

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_f
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08030d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08030e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08030f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080310

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_10
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08030e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08030f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080310

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_11
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08030f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080310

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_4
    if-ne v1, v5, :cond_5

    const v2, 0x7f080317

    packed-switch v0, :pswitch_data_3

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080314

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080315

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080316

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_12
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080312

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080312

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080312

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080313

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080314

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_13
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080312

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080312

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080313

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080314

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080315

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_14
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080312

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080313

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080314

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080315

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080316

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_15
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080313

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080314

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080315

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080316

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_16
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080314

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080315

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080316

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_17
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080315

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080316

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_5
    if-ne v1, v2, :cond_6

    const v2, 0x7f08031d

    packed-switch v0, :pswitch_data_4

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08031a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08031b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08031c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_18
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080318

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080318

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080318

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080319

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_19
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080318

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080318

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080319

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_1a
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080318

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080319

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_1b
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080319

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08031a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08031b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08031c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_1c
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08031a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08031b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08031c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_1d
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08031b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08031c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_6
    if-ne v1, v8, :cond_11

    const v2, 0x7f080323

    packed-switch v0, :pswitch_data_5

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080320

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080321

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080322

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_1e
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080320

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_1f
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080320

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080321

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_20
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f08031f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080320

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080321

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f080322

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_21
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f08031f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080320

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080321

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080322

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_22
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080320

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080321

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080322

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_23
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080321

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f080322

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_7
    const-string v3, "SecDisplayUtils"

    const-string v9, "[stpoc] initEdgeColorBalanceImageArray for D1 case"

    invoke-static {v3, v9}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v7, :cond_8

    const v2, 0x7f0802e1

    packed-switch v0, :pswitch_data_6

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802de

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802df

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_24
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802dd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_25
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802dd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802df

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_26
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802dd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802df

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_27
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802dd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802de

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802df

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_28
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802de

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802df

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_29
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802df

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_8
    if-ne v1, v4, :cond_9

    const v2, 0x7f0802e7

    packed-switch v0, :pswitch_data_7

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_2a
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_2b
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_2c
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_2d
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_2e
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_2f
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v4, 0x7f0802e6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_9
    if-ne v1, v6, :cond_a

    packed-switch v0, :pswitch_data_8

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_30
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_31
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_32
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_33
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_34
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_35
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_a
    if-ne v1, v5, :cond_b

    packed-switch v0, :pswitch_data_9

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_36
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_37
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_38
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_39
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_3a
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_3b
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_b
    if-ne v1, v2, :cond_c

    packed-switch v0, :pswitch_data_a

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_3c
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_3d
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_3e
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_3f
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_40
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_41
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802f9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_c
    if-ne v1, v8, :cond_11

    packed-switch v0, :pswitch_data_b

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_42
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_43
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_44
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_45
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_46
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_47
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802fe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const v3, 0x7f0802ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_d
    :goto_1
    const-string v3, "SecDisplayUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[stpoc] initEdgeColorBalanceImageArray for Cruiser : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v10, Lcom/samsung/android/settings/display/SecDisplayUtils;->CRUISER_PROJECT:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->CRUISER_PROJECT:Z

    const/4 v9, 0x7

    if-eqz v3, :cond_e

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdnieEdgeColorBalanceSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v3

    if-ne v3, v7, :cond_e

    const-string v3, "SecDisplayUtils"

    const-string v10, "[stpoc] initEdgeColorBalanceImageArray for Cruiser Case1,2"

    invoke-static {v3, v10}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v9, [[I

    const/4 v10, 0x0

    new-array v11, v9, [I

    fill-array-data v11, :array_0

    aput-object v11, v3, v10

    new-array v10, v9, [I

    fill-array-data v10, :array_1

    aput-object v10, v3, v7

    new-array v10, v9, [I

    fill-array-data v10, :array_2

    aput-object v10, v3, v4

    new-array v10, v9, [I

    fill-array-data v10, :array_3

    aput-object v10, v3, v6

    new-array v10, v9, [I

    fill-array-data v10, :array_4

    aput-object v10, v3, v5

    new-array v10, v9, [I

    fill-array-data v10, :array_5

    aput-object v10, v3, v2

    new-array v9, v9, [I

    fill-array-data v9, :array_6

    aput-object v9, v3, v8

    nop

    goto :goto_2

    :cond_e
    const-string v3, "SecDisplayUtils"

    const-string v10, "[stpoc] initEdgeColorBalanceImageArray for Case 3"

    invoke-static {v3, v10}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v9, [[I

    const/4 v10, 0x0

    new-array v11, v9, [I

    fill-array-data v11, :array_7

    aput-object v11, v3, v10

    new-array v10, v9, [I

    fill-array-data v10, :array_8

    aput-object v10, v3, v7

    new-array v10, v9, [I

    fill-array-data v10, :array_9

    aput-object v10, v3, v4

    new-array v10, v9, [I

    fill-array-data v10, :array_a

    aput-object v10, v3, v6

    new-array v10, v9, [I

    fill-array-data v10, :array_b

    aput-object v10, v3, v5

    new-array v10, v9, [I

    fill-array-data v10, :array_c

    aput-object v10, v3, v2

    new-array v9, v9, [I

    fill-array-data v9, :array_d

    aput-object v9, v3, v8

    nop

    :goto_2
    if-lt v1, v7, :cond_10

    if-le v1, v8, :cond_f

    goto/16 :goto_3

    :cond_f
    packed-switch v0, :pswitch_data_c

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v7, v3, v1

    aget v6, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v6, v3, v1

    aget v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    aget v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v4, v3, v1

    aget v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v4, v3, v1

    aget v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_48
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    aget v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v4, v3, v1

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_49
    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v8, v3, v1

    aget v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v8, v3, v1

    aget v7, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v7, v3, v1

    aget v4, v7, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v4, v3, v1

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v4, v3, v1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_4a
    sget-object v8, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v9, v3, v1

    aget v7, v9, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v8, v3, v1

    aget v4, v8, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v7, v3, v1

    aget v6, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v6, v3, v1

    aget v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    aget v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_4b
    sget-object v7, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v9, v3, v1

    aget v4, v9, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v7, v3, v1

    aget v6, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v6, v3, v1

    aget v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    aget v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v4, v3, v1

    aget v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_4c
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v7, v3, v1

    aget v6, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v6, v3, v1

    aget v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    aget v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v4, v3, v1

    aget v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v4, v3, v1

    aget v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_4d
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v6, v3, v1

    aget v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    aget v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v4, v3, v1

    aget v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v4, v3, v1

    aget v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    aget-object v4, v3, v1

    aget v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    :goto_3
    const-string v2, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[stpoc] error initEdgeColorBalanceImageArray for Case 3 : edgeColorBalanceUserIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    nop

    :cond_11
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_5
    .packed-switch -0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_6
    .packed-switch -0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_7
    .packed-switch -0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_8
    .packed-switch -0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_9
    .packed-switch -0x1
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    :pswitch_data_a
    .packed-switch -0x1
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch

    :pswitch_data_b
    .packed-switch -0x1
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
    .end packed-switch

    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x7f08035e
        0x7f08035d
        0x7f08035c
        0x7f08035b
        0x7f08035a
        0x7f08035f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x7f080358
        0x7f080357
        0x7f080356
        0x7f080355
        0x7f080354
        0x7f080359
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x7f080352
        0x7f080351
        0x7f080350
        0x7f08034f
        0x7f08034e
        0x7f080353
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x7f08034c
        0x7f08034b
        0x7f08034a
        0x7f080349
        0x7f080348
        0x7f08034d
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x7f080346
        0x7f080345
        0x7f080344
        0x7f080343
        0x7f080342
        0x7f080347
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x7f080364
        0x7f080363
        0x7f080362
        0x7f080361
        0x7f080360
        0x7f080365
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x7f080340
        0x7f08033f
        0x7f08033e
        0x7f08033d
        0x7f08033c
        0x7f080341
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x7f08033a
        0x7f080339
        0x7f080338
        0x7f080337
        0x7f080336
        0x7f08033b
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x7f080334
        0x7f080333
        0x7f080332
        0x7f080331
        0x7f080330
        0x7f080335
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x7f08032e
        0x7f08032d
        0x7f08032c
        0x7f08032b
        0x7f08032a
        0x7f08032f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x7f080328
        0x7f080327
        0x7f080326
        0x7f080325
        0x7f080324
        0x7f080329
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x7f08036a
        0x7f080369
        0x7f080368
        0x7f080367
        0x7f080366
        0x7f08036b
    .end array-data
.end method

.method public static isAODDisabledInPSM(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psm_always_on_display_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static isAccessibilityVisionEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "greyscale_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "color_blind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportedColorLens(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "color_lens_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v1, v2

    return v1
.end method

.method public static isAutoBrightnessEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public static isDeXScreenTimeoutChangeAllowed(Landroid/content/Context;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "content://com.sec.knox.provider/DexPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "isScreenTimeoutChangeAllowed"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SecDisplayUtils"

    const-string v5, "SQLiteException MDM DeXPolicy"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_1
    const-string v2, "isScreenTimeoutChangeAllowed"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "SecDisplayUtils"

    const-string v5, "CursorIndexOutOfBoundsException in isScreenTimeoutChangeAllowed"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    :goto_3
    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isScreenTimeoutChangeAllowed  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isDefaultEasyLauncher(Landroid/content/pm/PackageManager;)Z
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.easylauncher"

    const-string v2, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public static isDefaultLauncher(Landroid/content/pm/PackageManager;)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDefaultLauncher : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.launcher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sec.android.app.launcher"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    const-string v0, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDefaultLauncher : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.sec.android.app.launcher"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.launcher"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const-string v1, "SecDisplayUtils"

    const-string v2, "isDefaultLauncher : true"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDeviceRelatedWithSmartViewConnected(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "SecDisplayUtils"

    const-string v2, "isDeviceRelatedWithSmartViewConnected : context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isWifiDisplayConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isDlnaDeviceConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isGoogleCastConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDlnaDeviceConnected(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDlnaDeviceConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isEdgeColorBalanceDream1NA()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_POC_GRAY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEdgeColorBalanceDream1NA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static isEdgeColorBalanceDream2NA(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "SecDisplayUtils"

    const-string v2, "isEdgeColorBalanceDream2NA() : mdnie is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_DISABLE_POC_GRAY64"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdnieEdgeColorBalanceSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v2

    const-string v3, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEdgeColorBalanceDream2NA() - GRAY64 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " / bIsMdnieEdgeColorBalanceSupported : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEdgeColorBalanceDream2NA() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    move v0, v5

    nop

    :cond_2
    return v0
.end method

.method public static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public static isGoogleCastConnected(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x4

    const-string v1, "media_router"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->matchesTypes(Landroid/media/MediaRouter$RouteInfo;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->semGetDeviceAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "Audio Mirroring"

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v4, "SecDisplayUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isGoogleCastConnected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isHdmiConnected(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-object v4, v2, v3

    if-eqz v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHdmiConnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isInDefaultTimeoutList([Ljava/lang/CharSequence;J)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isMdnieEdgeColorBalanceSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->isMdniePocSupported()Z

    move-result v0

    const-string v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stpoc] isMdnieEdgeColorBalanceSupported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isMobileKeyboardConnected(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isNeedSkipEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isEdgeColorBalanceDream1NA()Z

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isEdgeColorBalanceDream2NA(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public static isNightThemeEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/Utils;->isCurrentThemeSupportNightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isHightContrastFontsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isScreenSaverEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SecDisplayUtils"

    const-string v3, " isScreenSaverEnabled security exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static isSignatureMatch(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_3

    array-length v4, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move v5, v1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    :try_start_1
    aget-object v6, v3, v1

    move v7, v0

    :goto_1
    sget-object v8, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-ge v7, v8, :cond_1

    sget-object v8, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    aget-object v8, v8, v7

    invoke-virtual {v8, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    move v1, v5

    :cond_3
    goto :goto_4

    :catch_1
    move-exception v0

    move v5, v1

    :goto_3
    const-string v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find my package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_4
    return v1
.end method

.method public static isSupportScreenSaverWhenToDream()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->suppotDockSettings()Z

    move-result v0

    return v0
.end method

.method public static isSupportedColorLens(Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.color.LENS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_COLOR_LENS"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v2
.end method

.method public static isWifiDisplayConnected(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiDisplayConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isZeroLauncher(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.launcher"

    const-string v2, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method public static matchesTypes(Landroid/media/MediaRouter$RouteInfo;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static removeEfsEdgeColorBalanceErrorOccurredOnBoot()V
    .locals 4

    const-string v0, "/efs/etc/poc/failcount"

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    const-string v2, "SecDisplayUtils"

    const-string v3, "[stpoc] removeEfsEdgeColorBalanceErrorOccurredOnBoot"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static restoreDefaultScreenBrightnessMode(Landroid/content/Context;)V
    .locals 5

    const-string v0, "SecDisplayUtils"

    const-string v1, "[stpoc] restoreDefaultScreenBrightnessMode"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "display_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "isBackupBrightnessMode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const-string v4, "SCREEN_BRIGHTNESS_MODE"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isBackupBrightnessMode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "SecDisplayUtils"

    const-string v3, "[stpoc] restoreDefaultScreenBrightnessMode"

    invoke-static {v1, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setAutoBrightnessSetting(Landroid/content/Context;Z)I
    .locals 4

    if-nez p0, :cond_0

    const-string v0, "SecDisplayUtils"

    const-string v1, "setAutoBrightnessSetting() - context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportLightSensor(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "SecDisplayUtils"

    const-string v2, "setAutoBrightnessSetting() - Device not support light sensor"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SecDisplayUtils"

    const-string v1, "setAutoBrightnessSetting() - Disabled by dex"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v0
.end method

.method public static setBixbyScreenResolution(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setBixbyScreenSaverEnabled(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screensaver_enabled"

    nop

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setBixbyScreenZoom(Landroid/content/Context;I)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->PHONE_DENSITY_BASE_PIXEL:[F

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    array-length v2, v0

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    aget v2, v0, v2

    invoke-static {p0, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->ApplyForcedDisplayDensity(Landroid/content/Context;I)V

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static setBixbyWhiteColorBalance(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    const/4 v2, 0x5

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sec_display_preset_index"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method public static setBlueLightFilterSetting(Landroid/content/Context;Z)I
    .locals 4

    if-nez p0, :cond_0

    const-string v0, "SecDisplayUtils"

    const-string v1, "setBlueLightFilterSetting() - context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bluelightfilter"

    const-string v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x2

    return v1
.end method

.method public static setDualDisplayEasyModeDensity(Landroid/content/Context;I)V
    .locals 10

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v9

    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_density_forced"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preserved_density_standard_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set DS Easymode preserveDensity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1cc

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preserved_density_standard_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    :cond_1
    :try_start_0
    invoke-interface {v9, v3}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SecDisplayUtils"

    const-string v4, "getInitialDisplayDensity() exception!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set DS Standard mode / restore density = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDualDisplayEasyModeDensity / set width -1, height -1, density : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v9

    move v6, v1

    :try_start_1
    invoke-interface/range {v2 .. v8}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensity(IIIIZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "SecDisplayUtils"

    const-string/jumbo v4, "setForcedDisplaySizeDensityEx() exception!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static setEdgeColorBalanceUserIndexTemp(Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_poc_index"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "SecDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stpoc] setEdgeColorBalanceUserIndexTemp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setNightModeSetting(Landroid/content/Context;Z)I
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "SecDisplayUtils"

    const-string/jumbo v1, "setNightModeSetting() - context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    const-string/jumbo v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/UiModeManager;->setNightMode(I)V

    return v1
.end method

.method public static setPreviewImageHeight(Landroid/content/Context;I)I
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, v0

    int-to-double v3, v3

    int-to-double v5, p1

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    return v3
.end method

.method public static setScreenTimeout(Landroid/content/Context;J)I
    .locals 6

    if-eqz p0, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SecDisplayUtils"

    const-string/jumbo v1, "setScreenTimeout() - Disabled by dex"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0

    :cond_1
    const-string v0, "no_config_screen_timeout"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "SecDisplayUtils"

    const-string/jumbo v2, "setScreenTimeout() - Disabled by admin"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimeoutList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_off_timeout"

    long-to-int v5, p1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    return v2

    :cond_3
    goto :goto_0

    :cond_4
    const-string v2, "SecDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setScreenTimeout() - SCREEN_TIMEOUT_NOT_IN_DEFAULT_TIMEOUT_LIST : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    return v2

    :cond_5
    :goto_1
    const-string v0, "SecDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenTimeout() - BIXBY_INVALID_ARGUMENT Contextg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "null"

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not null / timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public static setScreenZoomInfo(Landroid/content/Context;[I)V
    .locals 6

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperTabletDensities(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {p0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    aget v2, p1, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v3, v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->ApplyForcedDisplayDensity(Landroid/content/Context;I)V

    return-void
.end method

.method public static setSeekBarThumb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 11

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v7, 0x1

    invoke-static {v3, v5, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v8, v6, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v8
.end method

.method public static setSelectedScreenResolution(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setSelectedScreenResolution(Landroid/content/Context;IZI)V

    return-void
.end method

.method public static setSelectedScreenResolution(Landroid/content/Context;IZI)V
    .locals 33

    move/from16 v1, p3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v2, v0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0x168

    const/4 v10, 0x4

    const/4 v11, 0x4

    const/high16 v0, 0x3f800000    # 1.0f

    move v12, v0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v13, 0x0

    invoke-interface {v0, v13, v2}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    invoke-interface {v0, v13}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    move v3, v14

    move v4, v3

    :try_start_1
    const-string v14, "SecDisplayUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getScreenSizeinformation() size : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v13, "display_density_forced"

    const/4 v14, 0x0

    invoke-static {v0, v13, v3, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const-string v0, "SecDisplayUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "currentDensity = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecDisplayUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "defaultDensity = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v13, "display_size_forced"

    invoke-static {v0, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x1

    if-eqz v13, :cond_1

    const-string v14, ""

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    array-length v15, v14

    if-le v15, v0, :cond_0

    const/4 v15, 0x0

    aget-object v0, v14, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v2, Landroid/graphics/Point;->x:I

    :goto_0
    goto :goto_1

    :cond_1
    iget v0, v2, Landroid/graphics/Point;->x:I

    :goto_1
    move v14, v0

    const-string v0, "SecDisplayUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    const-string v3, "currentWidth = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    const/4 v15, 0x1

    invoke-static {v0, v3, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v3, v0

    if-eqz v3, :cond_4

    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    int-to-float v15, v14

    div-float/2addr v0, v15

    int-to-float v15, v5

    mul-float/2addr v0, v15

    float-to-int v0, v0

    if-nez v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move/from16 v19, v3

    const-string v3, "preserved_density_standard_mode"

    invoke-static {v15, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "SecDisplayUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v6

    const-string v6, "easymode)preserveDensity = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    move/from16 v19, v3

    move/from16 v20, v6

    :goto_3
    const/high16 v3, 0x44340000    # 720.0f

    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const/high16 v15, 0x44b40000    # 1440.0f

    div-float/2addr v6, v15

    mul-float/2addr v3, v6

    float-to-int v3, v3

    const-string v6, "SecDisplayUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v0

    const-string v0, "easymode)defaultDensity = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    move/from16 v19, v3

    move/from16 v20, v6

    const/4 v0, 0x1

    if-ne v1, v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preserved_density_standard_mode"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_6

    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    int-to-float v6, v14

    div-float/2addr v0, v6

    int-to-float v6, v5

    mul-float/2addr v0, v6

    float-to-int v3, v0

    const-string v0, "SecDisplayUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "standardmode_protecting)defaultDensity = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    int-to-float v3, v14

    div-float/2addr v0, v3

    int-to-float v3, v5

    mul-float/2addr v0, v3

    float-to-int v3, v0

    :cond_6
    :goto_4
    const-string v0, "SecDisplayUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getScreenSizeinformation() density : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v2, Landroid/graphics/Point;->x:I

    div-int/lit16 v6, v0, 0x168

    packed-switch p1, :pswitch_data_0

    move v0, v6

    :goto_5
    move v10, v0

    goto :goto_6

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_5

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_5

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_5

    :goto_6
    int-to-float v0, v10

    int-to-float v11, v6

    div-float v11, v0, v11

    const-string v0, "SecDisplayUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "basePx : "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   targetPx : "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertRatio :  "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    move/from16 v22, v5

    move/from16 v23, v6

    int-to-double v5, v3

    const-wide/high16 v16, 0x4064000000000000L    # 160.0

    div-double v5, v5, v16

    div-double/2addr v0, v5

    double-to-int v1, v0

    const/16 v0, 0x140

    if-ge v1, v0, :cond_7

    const-string v0, "SecDisplayUtils"

    const-string/jumbo v5, "smallestWidth is less then 320!!!!! so set default smallestWidth value"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :cond_7
    :try_start_2
    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v11

    float-to-int v0, v0

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    int-to-float v6, v3

    mul-float/2addr v6, v11

    float-to-int v6, v6

    const-string v12, "SecDisplayUtils"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v31, v1

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v32, v2

    :try_start_4
    const-string v2, "set width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  density : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  setDefault : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move/from16 v2, p2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_9

    if-lez v5, :cond_9

    if-gtz v6, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v30, 0x1

    move/from16 v26, v0

    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v2

    invoke-interface/range {v24 .. v30}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensity(IIIIZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_9

    :cond_9
    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move/from16 v2, p2

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v32, v2

    move/from16 v2, p2

    goto :goto_8

    :catch_3
    move-exception v0

    move/from16 v31, v1

    move-object/from16 v32, v2

    move/from16 v2, p2

    :goto_8
    const-string v1, "SecDisplayUtils"

    const-string/jumbo v5, "setForcedDisplaySizeDensityEx() exception!!!"

    invoke-static {v1, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :catch_4
    move-exception v0

    move-object/from16 v32, v2

    move/from16 v18, v3

    move/from16 v20, v6

    move/from16 v2, p2

    goto :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v32, v2

    move/from16 v20, v6

    move/from16 v2, p2

    move/from16 v18, v3

    :goto_a
    const-string v1, "SecDisplayUtils"

    const-string v3, "getInitialDisplaySize() exception!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static showNightThemeDisabledReasonToast(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNightThemeDisabledReasonToastText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/settings/display/SecDisplayUtils$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static startReadEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;I)V
    .locals 3

    const-string v0, "SecDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stpoc] start read poc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setPocSetting(I)Z

    return-void
.end method

.method public static stopReadEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;)V
    .locals 2

    const-string v0, "SecDisplayUtils"

    const-string v1, "[stpoc] stop read poc"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setPocCancel()Z

    return-void
.end method

.method public static supportEdgeColorBalanceSettings(Landroid/content/Context;)Z
    .locals 7

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_POC_COMPENSATION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SecDisplayUtils"

    const-string v2, "isSupportPocSettings false by feature"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/policy/SecSCPMHelper;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/policy/SecSCPMHelper;-><init>(Landroid/content/Context;)V

    :try_start_0
    const-string v3, "edge_color_balance"

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/settings/policy/SecSCPMHelper;->isSupportedMenu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "SecDisplayUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecSCPMHelper permission exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    const-string v3, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportPocSettings SCPMHelper : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static updateDeXTimeoutPreferenceDescription(Landroid/content/Context;Lcom/samsung/android/settings/widget/SecRestrictedPreference;J)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-string v0, ""

    :goto_0
    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p2, p3, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDexScreenTimoutEntryandValue(Landroid/content/Context;JI)[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDexScreenTimoutEntryandValue(Landroid/content/Context;JI)[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v1, :cond_4

    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_3

    aget-object v6, v2, v3

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, p2, v6

    if-ltz v8, :cond_2

    move v5, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const v3, 0x7f1212de

    new-array v0, v0, [Ljava/lang/Object;

    aget-object v6, v1, v5

    aput-object v6, v0, v4

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    :goto_2
    const-string v0, ""

    goto :goto_0

    :goto_3
    nop

    return-object v0
.end method

.method private static updateFontSizeByFontScale(Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_scale"

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    nop

    invoke-static {v1, v3}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x6

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    if-eq v4, v0, :cond_0

    const-string v6, "SecDisplayUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current font_size and font_scale ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ") is not matched. So we updated font_size to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_size"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static updateTimeoutPreferenceDescription(Landroid/content/Context;Lcom/samsung/android/settings/widget/SecRestrictedPreference;J)Ljava/lang/String;
    .locals 6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->isDisabledByAdmin()Z

    move-result v3

    if-eqz v3, :cond_0

    const v1, 0x7f120751

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    goto :goto_3

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gez v3, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    array-length v3, v0

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p2, p3, v0, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getTimeoutDescription(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v1, ""

    goto :goto_1

    :cond_3
    const v4, 0x7f1212de

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    goto :goto_3

    :cond_4
    :goto_2
    const-string v1, ""

    goto :goto_0

    :goto_3
    nop

    return-object v1
.end method

.method public static writeFontScaleDBAllUser(Landroid/content/Context;F)V
    .locals 7

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "font_scale"

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v5, p1, v6}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    const-string v4, "SecDisplayUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeFontScaleDBAllUser() user.id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
