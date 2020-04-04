.class public Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsefulFeatureHub.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    }
.end annotation


# static fields
.field private static SETTINGS_ADVANCEDFEATURE_CAPTURE:I

.field private static SETTINGS_ADVANCEDFEATURE_CAPTURE_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_DIRECTCALL:I

.field private static SETTINGS_ADVANCEDFEATURE_DIRECTCALL_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_DIRECTSHARE:I

.field private static SETTINGS_ADVANCEDFEATURE_DIRECTSHARE_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_MUTE:I

.field private static SETTINGS_ADVANCEDFEATURE_MUTE_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_SMARTALRET:I

.field private static SETTINGS_ADVANCEDFEATURE_SMARTALRET_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_SWIPE:I

.field private static SETTINGS_ADVANCEDFEATURE_SWIPETOCALLMESSAGE:I

.field private static SETTINGS_ADVANCEDFEATURE_SWIPETOCALLMESSAGE_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_SWIPE_SWITCH:I


# instance fields
.field private context:Landroid/content/Context;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAnimationView:Landroid/widget/ImageView;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureName:Ljava/lang/String;

.field private final mInteractionControlObserverInteraction:Landroid/database/ContentObserver;

.field private mLoggingEvent:I

.field private mLoggingFlow:I

.field private mMotionDBItem:Ljava/lang/String;

.field private final mMotionObserver:Landroid/database/ContentObserver;

.field private mMotionType:Ljava/lang/String;

.field private final mMultiWindowObserver:Landroid/database/ContentObserver;

.field private mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

.field private mSummaryView:Landroid/widget/TextView;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    const-string v0, "default"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$2;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mInteractionControlObserverInteraction:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    return-void
.end method

.method private createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v2, "smart_capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f0a0233

    const v4, 0x7f0805d6

    const/16 v5, 0x8

    const v6, 0x7f0601b2

    const/16 v7, 0xf

    if-nez v1, :cond_5

    const v1, 0x7f0d0283

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v8, 0x7f0a08c7

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v7, v6}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    invoke-static {v0}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v4, 0x7f0a0230

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSummaryView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v4, 0x7f0a007f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    nop

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSummaryView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v3, v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    iput v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingFlow:I

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v3, v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iput v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingEvent:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    goto/16 :goto_2

    :cond_5
    const v1, 0x7f0d026a

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v8, 0x7f0a077f

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v7, v6}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    invoke-static {v0}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v6, 0x7f0a077d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v4, 0x7f0a0781

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSummaryView:Landroid/widget/TextView;

    nop

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v3, v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    iput v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingFlow:I

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v3, v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iput v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingEvent:I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSummaryView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    return-object v1
.end method

.method private dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f121a8f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f1204ac

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f121073

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    aput-object v0, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$7;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const v5, 0x7f121a8e

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$6;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$8;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private maketurnOffUniversalPopup()V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    const v0, 0x7f121a8f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f12006e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1204ac

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v6, 0x7f121073

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$10;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const v4, 0x7f121a8e

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$9;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$11;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private setDescriptions()V
    .locals 7

    const-string v0, "UsefulFeatureHub"

    const-string v1, "setDescriptions"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v3, "direct_call"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    move-object v0, v2

    const-string v2, "direct_call"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0804da

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0804d9

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const v2, 0x7f0804db

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_0

    :cond_2
    const v2, 0x7f0804d8

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_0
    const v2, 0x7f121097

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSamsungMessageAppEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const v2, 0x7f121095

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const v2, 0x7f121094

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_1
    const-string v2, "motion_pick_up_to_call_out"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string v2, "UFDC"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    const/16 v2, 0x110a

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL:I

    const/16 v2, 0x110b

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL_SWITCH:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v3, "smart_alert"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    move-object v0, v2

    const-string v2, "smart_alert"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_5

    const v2, 0x7f0804fc

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_2

    :cond_5
    const v2, 0x7f0804fb

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x7f0804fa

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    const v2, 0x7f0804fd

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_2

    :cond_8
    const v2, 0x7f0804f9

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_2
    const v2, 0x7f121093

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSamsungMessageAppEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    const v2, 0x7f121092

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto :goto_3

    :cond_9
    const v2, 0x7f121091

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_3
    const-string v2, "motion_pick_up"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string v2, "UFSA"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    const/16 v2, 0x110c

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET:I

    const/16 v2, 0x110d

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET_SWITCH:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v3, "easy_mute"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    move-object v0, v2

    const-string v2, "easy_mute"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    const/high16 v3, 0x200000

    if-eqz v2, :cond_c

    if-eqz v1, :cond_b

    const v2, 0x7f0803b0

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_4

    :cond_b
    const v2, 0x7f0803af

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_4

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_d

    const v2, 0x7f0803ae

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_4

    :cond_d
    const v2, 0x7f0803b3

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_4

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    const v2, 0x7f0803b1

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_4

    :cond_f
    const v2, 0x7f0803ad

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_4

    :cond_10
    if-eqz v1, :cond_11

    const v2, 0x7f0803b4

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_4

    :cond_11
    const v2, 0x7f0803b2

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_4
    const v2, 0x7f120ebf

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    const v4, 0x7f120ebb

    const v5, 0x7f120eba

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_5

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto :goto_6

    :cond_13
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto :goto_6

    :cond_14
    :goto_5
    const v2, 0x7f120ebc

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto :goto_7

    :cond_15
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :cond_16
    :goto_7
    const-string v2, "motion_merged_mute_pause"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string v2, "UFEM"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    const/16 v2, 0x110e

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE:I

    const/16 v2, 0x110f

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE_SWITCH:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v3, "palm_swipe_to_capture"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    move-object v0, v2

    const-string v2, "palm_swipe_to_capture"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_18

    const v2, 0x7f0803a9

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_8

    :cond_18
    const v2, 0x7f0803a8

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_8

    :cond_19
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const v2, 0x7f0803a7

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_8

    :cond_1a
    if-eqz v1, :cond_1b

    const v2, 0x7f0803ab

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_8

    :cond_1b
    const v2, 0x7f0803aa

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_8
    const v2, 0x7f121073

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    const v2, 0x7f121072

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    const-string v2, "surface_palm_swipe"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string v2, "UFPC"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    const/16 v2, 0x1108

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE:I

    const/16 v2, 0x1109

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE_SWITCH:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v3, "com.samsung.android.app.scrollcapture"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v3, "com.samsung.android.app.smartcapture"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_1d
    new-instance v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    move-object v0, v2

    const-string v2, "smart_capture"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v3, "palm_swipe_to_capture"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1e

    const v2, 0x7f0805e1

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_9

    :cond_1e
    const v2, 0x7f0805de

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_9

    :cond_1f
    if-eqz v1, :cond_20

    const v2, 0x7f0805e0

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_9

    :cond_20
    const v2, 0x7f0805df

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_9

    :cond_21
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v3, "palm_swipe_to_capture"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    const v2, 0x7f0805dc

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_9

    :cond_22
    const v2, 0x7f0805dd

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_9

    :cond_23
    const v2, 0x7f080653

    if-eqz v1, :cond_24

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_9

    :cond_24
    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_9
    const v2, 0x7f12187b

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25

    const v2, 0x7f121874

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto :goto_a

    :cond_25
    const v2, 0x7f121875

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_a
    const-string v2, "enable_smart_capture"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string v2, "UFSC"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    const/16 v2, 0x1106

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE:I

    const/16 v2, 0x1107

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE_SWITCH:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    new-instance v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    move-object v0, v2

    const-string v2, "direct_share"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_27

    const v2, 0x7f0802c4

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_b

    :cond_27
    const v2, 0x7f0802c3

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_b
    const v2, 0x7f12071d

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f12071c

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f12071b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto :goto_c

    :cond_28
    const v2, 0x7f12071a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_c
    const-string v2, "direct_share"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string v2, "UFDS"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    const/16 v2, 0x1e0a

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTSHARE:I

    const/16 v2, 0x1e0b

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTSHARE_SWITCH:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTSHARE:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTSHARE:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    move-object v0, v2

    const-string v2, "swipe_to_call_or_send_messages"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2a

    if-eqz v1, :cond_29

    const v2, 0x7f08069a

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_d

    :cond_29
    const v2, 0x7f080699

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_d

    :cond_2a
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const v2, 0x7f080698

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto :goto_d

    :cond_2b
    const v2, 0x7f080697

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_d
    const v2, 0x7f1219d9

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "com.samsung.android.messaging"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_e

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v5, "UsefulFeatureHub"

    const-string v6, "Package : com.samsung.android.messaging"

    invoke-static {v5, v6, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    const-string v4, ""

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_f

    :cond_2c
    if-eqz v3, :cond_2d

    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    const v6, 0x1dcd6500

    if-lt v5, v6, :cond_2d

    const v5, 0x7f1219d7

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_2d
    const v5, 0x7f1219d5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_2e
    :goto_f
    const v5, 0x7f1219d8

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_10
    iput-object v4, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    const-string v5, "swipe_to_call_message"

    iput-object v5, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string v5, "UFCM"

    iput-object v5, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    const/16 v5, 0x1ded

    sput v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPETOCALLMESSAGE:I

    const/16 v5, 0x1dee

    sput v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPETOCALLMESSAGE_SWITCH:I

    sget v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPETOCALLMESSAGE:I

    iput v5, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPETOCALLMESSAGE_SWITCH:I

    iput v5, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private smartCaptureDisablePopup()V
    .locals 7

    const v0, 0x7f121a8f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f120041

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1204ac

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v6, 0x7f12187b

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f121a8e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$14;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$14;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$13;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$13;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$12;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$12;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingFlow:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "UsefulFeatureHub"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v3, "swipe_to_call_or_send_messages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v1, v3

    goto :goto_4

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v5, "smart_capture"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v5, "multi_window_setting"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    move v1, v3

    goto :goto_4

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    move v1, v3

    :goto_4
    const-string v2, "UsefulFeatureHub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityCreated() switchState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v2, "direct_share"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v2, "smart_capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    const-string v2, "UsefulFeatureHub"

    const-string v3, "ani.start"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v2, "multi_window_setting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v2, "palm_swipe_to_capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "UsefulFeatureHub"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "type"

    const-string v3, "default"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->setDescriptions()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "UsefulFeatureHub"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    const-string v0, "UsefulFeatureHub"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "UsefulFeatureHub"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v1, "multi_window_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v1, "smart_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v1, "multi_window_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v1, "direct_share"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v1, "swipe_to_call_or_send_messages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mInteractionControlObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v1, "multi_window_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 8

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "UsefulFeatureHub"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v4, "smart_capture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v4, "palm_swipe_to_capture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "false"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isScreenCaptureEnabled"

    invoke-static {v5, v6, v7, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    if-eq v5, v2, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "surface_palm_swipe"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v2

    goto :goto_2

    :cond_6
    move v6, v1

    :goto_2
    invoke-virtual {v5, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_enabled"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mInteractionControlObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_c

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v4, "smart_capture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_magnifier"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    goto/16 :goto_c

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    goto :goto_5

    :cond_b
    move v3, v1

    :goto_5
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_c

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v4, "multi_window_setting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_7

    :cond_d
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_e

    move v4, v2

    goto :goto_6

    :cond_e
    move v4, v1

    :goto_6
    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_c

    :cond_f
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v4, "direct_share"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_10

    move v4, v2

    goto :goto_8

    :cond_10
    move v4, v1

    :goto_8
    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_c

    :cond_11
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v4, "swipe_to_call_or_send_messages"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_12

    move v4, v2

    goto :goto_9

    :cond_12
    move v4, v1

    :goto_9
    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_c

    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_14

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_b

    :cond_14
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_15

    move v4, v2

    goto :goto_a

    :cond_15
    move v4, v1

    :goto_a
    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mInteractionControlObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_c
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v4, "multi_window_setting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v4, v2, :cond_16

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_16
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v3, "direct_share"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v3, "smart_capture"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_18

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    const-string v3, "UsefulFeatureHub"

    const-string v4, "ani.start"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v3, "swipe_to_call_or_send_messages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_d

    :cond_19
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v3, "multi_window_setting"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1a
    :goto_d
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    const-string v0, "UsefulFeatureHub"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const-string v0, "UsefulFeatureHub"

    const-string v1, "onSwitchChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getMetricsCategory()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingEvent:I

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    move v0, p2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v2, "palm_swipe_to_capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->maketurnOffUniversalPopup()V

    goto/16 :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->makeTalkBackDisablePopup()V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_palm_swipe"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v2, "easy_mute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_merged_mute_pause"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_overturn"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_palm_touch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v2, "multi_window_setting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "multi_window_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_popup_view_shortcut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v3, "smart_capture"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "finger_magnifier"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->smartCaptureDisablePopup()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_smart_capture"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v2, "swipe_to_call_or_send_messages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    :goto_1
    return-void
.end method
