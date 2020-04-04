.class Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecuredLockSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuredLockIndexProvider"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

.field private mUser:Landroid/os/UserManager;

.field private mXmlResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    const-class v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "lock_after_timeout"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "lock_network_and_security"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "power_button_instantly_locks"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "lockdown_in_power_menu"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->access$000()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "auto_factory_reset"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "lock_after_timeout"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "visiblepattern"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "power_button_instantly_locks"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "lock_network_and_security"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "lockdown_in_power_menu"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x90000

    if-eq v1, v2, :cond_3

    const v2, 0x9100

    if-eq v1, v2, :cond_3

    const-string v2, "visiblepattern"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/notification/SoundUtils;->hasHaptic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/samsung/android/settings/notification/SoundUtils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, "lock_screen_vibration"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportPowerKey()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "power_button_instantly_locks"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mUser:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mUser:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mUser:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "auto_factory_reset"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const-string v2, "auto_factory_reset"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const v2, 0x10001

    if-ne v1, v2, :cond_0

    const v1, 0x7f1500f5

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mXmlResId:I

    goto :goto_0

    :cond_0
    const v1, 0x7f1500f0

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mXmlResId:I

    :goto_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mXmlResId:I

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
