.class public Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SafetyCareEmergencyMode.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEmerReceiver:Landroid/content/BroadcastReceiver;

.field private mHelpContent:Ljava/lang/String;

.field private mHelpDBItem:Ljava/lang/String;

.field private mHelpImgResID:I

.field private mHelpTitleResID:I

.field private mHelpType:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mInitialCallState:I

.field private mListView:Landroid/widget/ListView;

.field private mMessageView:Landroid/widget/TextView;

.field private mMoreInfo:Landroid/widget/TextView;

.field private mMoreInfoLayout:Landroid/widget/LinearLayout;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mValidListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mHelpType:Ljava/lang/String;

    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mHelpDBItem:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mHelpTitleResID:I

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mHelpImgResID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$1;-><init>(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$2;-><init>(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mInitialCallState:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    const/4 v0, 0x0

    const v1, 0x7f0d0248

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0699

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mMessageView:Landroid/widget/TextView;

    const v2, 0x7f0a0696

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f0a0697

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mMoreInfo:Landroid/widget/TextView;

    const v2, 0x7f0a0698

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mMoreInfoLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isGrayScreenSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v2, 0x7f121258

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    const v0, 0x7f08061a

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mHelpImgResID:I

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mMoreInfo:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mMoreInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v4, 0x7f1210c6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isGrayScreenSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v5, 0x7f1210c1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v5, 0x7f1210c2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v5, 0x7f1210c3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v5, 0x7f1210c5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v5, 0x7f1210c4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0d020a

    invoke-static {v6, v7, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a04ea

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mMoreInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    goto :goto_2

    :cond_6
    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v3, 0x7f121259

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    :goto_3
    const v0, 0x7f08061b

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mHelpImgResID:I

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mMessageView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mHelpImgResID:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mHelpImgResID:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->setHasOptionsMenu(Z)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SafetyCareEmergencyMode"

    const-string v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "SafetyCareEmergencyMode"

    const-string v1, "onDestroyView() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.samsung.helphub"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "helphub:item"

    const-string v5, "emergency_mode"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mValidListener:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mValidListener:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mValidListener:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mValidListener:Z

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SafetyCareEmergencyMode"

    const-string v3, "isVideoCall() so, disable UPSM switch"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    nop

    :cond_7
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mInitialCallState:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "SafetyCareEmergencyMode"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const-string v0, "SafetyCareEmergencyMode"

    const-string v1, "onCheckedChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "enabled"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "flag"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "skipdialog"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method
