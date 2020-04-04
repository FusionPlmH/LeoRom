.class public Lcom/samsung/android/settings/nfc/TapAndPaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TapAndPaySettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static CATEGORY:Ljava/lang/String;

.field static final DBG:Z

.field private static OTHER_TAB_TAG:Ljava/lang/String;

.field private static PAYMENT_TAB_TAG:Ljava/lang/String;

.field private static SETTING_DUMMY_TAB:I

.field private static SETTING_OTHER_TAB:I

.field private static SETTING_PAYMENT_TAB:I


# instance fields
.field private mCategory:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

.field private mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_DUMMY_TAB:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_PAYMENT_TAB:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_OTHER_TAB:I

    const-string v0, "payment"

    sput-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    const-string v0, "others"

    sput-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    const-string v0, "android.settings.NFC_PAYMENT_SETTINGS.category"

    sput-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->CATEGORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCategory:I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x46

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "TapAndPaySettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->CATEGORY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCategory:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCategory:I

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d0206

    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x1020012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v4, 0x1020011

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v5, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v5, 0x7f120f7c

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v5, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v5, 0x7f120f5e

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const/4 v2, -0x1

    if-eqz p3, :cond_0

    const-string v3, "tap_and_pay_current"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCategory:I

    sget v4, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_PAYMENT_TAB:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    sget v4, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_PAYMENT_TAB:I

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCategory:I

    sget v4, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_OTHER_TAB:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    sget v4, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_OTHER_TAB:I

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    sget v4, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_PAYMENT_TAB:I

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f120f91

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    add-int/lit8 v11, v3, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "TapAndPaySettings"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "TapAndPaySettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "TapAndPaySettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    const-string v0, "tap_and_pay_current"

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nfc/PaymentSettings;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nfc/OtherSettings;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f0a0642

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-direct {v1}, Lcom/samsung/android/settings/nfc/PaymentSettings;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

    if-nez v1, :cond_4

    new-instance v1, Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-direct {v1}, Lcom/samsung/android/settings/nfc/OtherSettings;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
