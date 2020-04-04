.class public Lcom/samsung/android/settings/activekey/ActiveKeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ActiveKeySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCurrentHeaderView:Landroid/view/View;

.field private mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

.field private mLongPress:Landroid/support/v7/preference/PreferenceScreen;

.field private mOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

.field private mShortPress:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    return-void
.end method

.method private getXCoverKeyDescString()Ljava/lang/String;
    .locals 9

    const-string v0, "&#8226 "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f122014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f122015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f122016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f122017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f122018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f122019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "<br/>"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "<br/>"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "<br/>"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "<br/>"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private updateDescriptionUI()V
    .locals 8

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0119

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    nop

    const v2, 0x7f0a0039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getXCoverKeyDescString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v3, 0x7f122013

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1200a7

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f12048e

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v3, 0x7f0a0038

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "poseidonlteuc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080621

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->setHeaderView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    return-void
.end method

.method private updatePressActionItems()V
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "short_press_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "short_press_app"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "short_press_app_battery_conserve"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "short_press_app_battery_conserve"

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "long_press_app"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "long_press_app"

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "ActiveKeySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shortpress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ActiveKeySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "longpress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120188

    const v6, 0x7f12200f

    const v7, 0x7f122012

    if-eqz v1, :cond_2

    const-string v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v1}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v0, :cond_3

    const-string/jumbo v8, "torch/torch"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "short_press_app"

    const-string v10, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_2
    if-eqz v3, :cond_6

    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    :goto_3
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v2, :cond_7

    const-string/jumbo v5, "torch/torch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_4

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "long_press_app"

    const-string v7, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_4
    return-void
.end method

.method private updatePressActionItemsGridViewConcept()V
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v2

    const v3, 0x7f121a12

    const v4, 0x7f120d2d

    const v5, 0x7f120d2e

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    iget-object v7, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-eqz v7, :cond_4

    const-string v7, ""

    iget-object v8, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    const-string v7, ""

    iget-object v8, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v7, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v10, v9, v1

    invoke-virtual {v8, v5, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v8, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v7, v4}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :goto_2
    invoke-static {v0, v6}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v8, v7, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-eqz v8, :cond_9

    const-string v8, ""

    iget-object v9, v7, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    iget-object v8, v7, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v8, :cond_8

    const-string v8, ""

    iget-object v9, v7, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v8, v7, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    iget-object v11, v7, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v11, v10, v1

    invoke-virtual {v9, v5, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    iget-object v8, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v9, v7, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    :goto_3
    iget-object v8, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v4}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_5

    :cond_9
    :goto_4
    iget-object v8, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v3}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :goto_5
    iget-object v8, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v8, :cond_f

    const/4 v8, 0x2

    invoke-static {v0, v8}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v8

    if-eqz v8, :cond_e

    iget-object v9, v8, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-eqz v9, :cond_e

    const-string v9, ""

    iget-object v10, v8, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_7

    :cond_a
    iget-object v3, v8, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_d

    const-string v3, ""

    iget-object v9, v8, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    iget-boolean v3, v8, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, v8, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v9, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, v8, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_d
    :goto_6
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_8

    :cond_e
    :goto_7
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_f
    :goto_8
    return-void
.end method


# virtual methods
.method public getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, "ActiveKeySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x2f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v5, "short_press_app_battery_conserve"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x280

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    move-object v4, v5

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "ActiveKeySettings"

    const-string v6, "cannot find app name !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1db0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updateDescriptionUI()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKeyGridViewConcept()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f150094

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeyGridViewConcept()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f150112

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f150113

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f150095

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    :goto_0
    const-string/jumbo v0, "short_press_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    const-string v0, "long_press_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    const-string v0, "double_press_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

    const-string v0, "active_key_on_lockscreen_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "ActiveKeySettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "active_key_on_lockscreen"

    nop

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKeyGridViewConcept()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeyGridViewConcept()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.samsung.android.settings.activekey.AppList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pressed_type"

    const-string/jumbo v3, "short"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.samsung.android.settings.activekey.AppList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pressed_type"

    const-string v3, "long"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.ACTIVE_KEY_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKeyGridViewConcept()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeyGridViewConcept()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updatePressActionItems()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updatePressActionItemsGridViewConcept()V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "active_key_on_lockscreen"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    nop

    :cond_2
    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string v1, "ActiveKeySettings"

    const-string v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    const-string v0, "ActiveKeySettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
