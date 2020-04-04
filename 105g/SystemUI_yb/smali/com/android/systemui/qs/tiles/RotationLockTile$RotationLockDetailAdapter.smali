.class final Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RotationLockTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RotationLockDetailAdapter"
.end annotation


# instance fields
.field private mButtonOnNavigationBarOption:Landroid/view/View;

.field private mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

.field private mCallScreenOption:Landroid/view/View;

.field private mHomeScreenOption:Landroid/view/View;

.field private mLockScreenOption:Landroid/view/View;

.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;Lcom/android/systemui/qs/tiles/RotationLockTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->setHomeScreenRotationAllowed(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->setLockScreenRotationAllowed(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->setCallScreenRotationAllowed(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)Lcom/android/systemui/qs/QSSwitch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

    return-object v0
.end method

.method private setCallScreenRotationAllowed(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1200(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setHomeScreenRotationAllowed(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$600(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setLockScreenRotationAllowed(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$900(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateButtonOnNavigationBarOption(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f0a00da

    const v1, 0x7f0a05de

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

    new-instance v3, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$10;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$11;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSSwitch;->setEnabled(Z)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1300(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0189

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a047a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mSummary:Landroid/widget/TextView;

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_0

    const v2, 0x7f120a93

    goto :goto_0

    :cond_0
    const v2, 0x7f120a92

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a00d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    const v2, 0x7f0a00d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    const v2, 0x7f0a05de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f120a74

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    const v4, 0x7f0a05e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSSwitch;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1400(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarRotateSuggestionEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/QSSwitch;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->updateButtonOnNavigationBarOption(Z)V

    const v3, 0x7f0a0220

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    const v3, 0x7f0a0304

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    sget-boolean v3, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    const/16 v6, 0x8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f120a8f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSSwitch;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1600(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isHomeScreenRotationAllowed()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/QSSwitch;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    new-instance v9, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$4;

    invoke-direct {v9, p0, v7}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Lcom/android/systemui/qs/QSSwitch;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$5;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/QSSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1800(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v3

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isRotateMenuHide()Z

    move-result v7

    if-nez v7, :cond_2

    move v1, v5

    nop

    :cond_2
    move v3, v1

    :cond_3
    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1900(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120a90

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSSwitch;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2000(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSSwitch;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$6;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$6;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Lcom/android/systemui/qs/QSSwitch;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$7;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const v1, 0x7f0a00e1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2200(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f120a8e

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSSwitch;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2300(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isCallScreenRotationAllowed()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSSwitch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$8;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$8;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Lcom/android/systemui/qs/QSSwitch;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$9;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x7b

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$200(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120a91

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$300(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)V
    .locals 2

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isRotationLockTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2500(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->fireToggleStateChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2600(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->updateButtonOnNavigationBarOption(Z)V

    return-void
.end method
