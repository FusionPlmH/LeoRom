.class public Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FaceUsefulFeature.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/FaceUsefulFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceUsefulFeatureFragment"
.end annotation


# instance fields
.field private mBrightenScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mFasterRecognitionSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mFromSetupwizard:Z

.field private mLiftToWakeSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mStayOnLockScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFromSetupwizard:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->setResult(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->setResult(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->setResult(I)V

    return-void
.end method

.method private addBottomButton()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d012e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    new-instance v3, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment$1;-><init>(Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x800005

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private addSuwBottomButton()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0130

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a05ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0a053e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v2, :cond_0

    new-instance v4, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment$2;-><init>(Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v3, :cond_1

    const v4, 0x7f120516

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    new-instance v4, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment$3;-><init>(Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070075

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v5, 0x800005

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f1500bf

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->setFaceUsefulFeaturePreference()V

    return-object v0
.end method

.method private sendFaceFeatureLogging()V
    .locals 9

    const-string v0, "FcstFaceUsefulFeature"

    const-string v1, "sendFaceFeatureLogging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Stay on Lock Screen"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    if-eqz v1, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    move-wide v6, v2

    :goto_0
    const/16 v1, 0x20e9

    const/16 v8, 0x20e8

    invoke-static {v8, v1, v0, v6, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFaceFasterRecognition()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Faster recognition"

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFasterRecognitionSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    move-wide v6, v4

    goto :goto_1

    :cond_1
    move-wide v6, v2

    :goto_1
    invoke-static {v8, v1, v0, v6, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportLiftToWakeSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Lift to wake"

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mLiftToWakeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    move-wide v6, v4

    goto :goto_2

    :cond_3
    move-wide v6, v2

    :goto_2
    invoke-static {v8, v1, v0, v6, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFaceBrightenScreen()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Brighten screen"

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    move-wide v2, v4

    nop

    :cond_5
    invoke-static {v8, v1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    :cond_6
    return-void
.end method

.method private setFaceUsefulFeaturePreference()V
    .locals 5

    const-string v0, "FcstFaceUsefulFeature"

    const-string v1, "setFaceUsefulFeaturePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "key_facelock_stay_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string v0, "key_face_useful_feature_faster_recognition"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFasterRecognitionSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string v0, "key_face_useful_feature_lift_to_wake"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mLiftToWakeSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string v0, "key_facelock_brighten_screen"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceStayOnLockScreen(Landroid/content/Context;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFaceFasterRecognition()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFasterRecognitionSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFasterRecognitionSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFasterRecognitionSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    :cond_2
    const-string v0, "key_face_useful_feature_faster_recognition"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->removePreference(Ljava/lang/String;)Z

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportLiftToWakeSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mLiftToWakeSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mLiftToWakeSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUsefulFeatureLiftToWake(Landroid/content/Context;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mLiftToWakeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    :cond_4
    const-string v0, "key_face_useful_feature_lift_to_wake"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->removePreference(Ljava/lang/String;)Z

    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFaceBrightenScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceBrightenScreen(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3

    :cond_5
    const-string v0, "key_facelock_brighten_screen"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->removePreference(Ljava/lang/String;)Z

    :goto_3
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FcstFaceUsefulFeature"

    const-string v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    const-string v1, "fromSetupwizard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFromSetupwizard:Z

    const-string v1, "FcstFaceUsefulFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FcstFaceUsefulFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "From setupwizard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFromSetupwizard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1202b1

    const-string v3, "FcstFaceUsefulFeature"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->finish()V

    return-void

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FcstFaceUsefulFeature"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->sendFaceFeatureLogging()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceUsefulFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====onPreferenceChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFasterRecognitionSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;ZI)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mLiftToWakeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUsefulFeatureLiftToWake(Landroid/content/Context;ZI)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;ZI)V

    goto :goto_0

    :cond_3
    const-string v1, "FcstFaceUsefulFeature"

    const-string v2, "Wrong preference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "FcstFaceUsefulFeature"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFromSetupwizard:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->setHideNavigationBar(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->addSuwBottomButton()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->addBottomButton()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method
