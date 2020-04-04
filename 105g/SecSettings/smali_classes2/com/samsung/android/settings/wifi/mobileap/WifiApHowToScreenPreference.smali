.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;
.super Landroid/support/v7/preference/Preference;
.source "WifiApHowToScreenPreference.java"


# instance fields
.field private mHiddenSsid:Z

.field private mMHSCustomer:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreSharedKey:Ljava/lang/String;

.field private mShouldShowSummary:Z

.field private mSsid:Ljava/lang/String;

.field private mText_color:Ljava/lang/String;

.field private mWpaString:Ljava/lang/String;


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v2, 0x7f0a0938

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0874

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0875

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0876

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0877

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a086f

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    const v10, 0x7f121d36

    const v11, 0x7f121ced

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-eqz v9, :cond_2

    iget-boolean v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f121d3c

    invoke-static {v8, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f121d3f

    new-array v10, v13, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v11, v10, v14

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f121d42

    new-array v10, v13, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v11, v10, v14

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v8, "TMO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f121d45

    invoke-static {v8, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f121d28

    invoke-static {v8, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v8, "SPRINT"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const v9, 0x7f121d2e

    if-eqz v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v9}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v9

    new-array v11, v13, [Ljava/lang/Object;

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v15, v11, v14

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v12

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f121d32

    invoke-static {v9}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v9

    new-array v11, v13, [Ljava/lang/Object;

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v13, v11, v14

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mMHSCustomer:Ljava/util/HashSet;

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_2
    iget-boolean v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    const/4 v15, 0x3

    if-eqz v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f121d08

    invoke-static {v8, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f121d0b

    new-array v10, v13, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v11, v10, v14

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f121d0e

    new-array v10, v15, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v11, v10, v14

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v8, "TMO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f121d11

    invoke-static {v8, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f121cf4

    invoke-static {v9, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v9, "SPRINT"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const v11, 0x7f121cfa

    if-eqz v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v11}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v11

    new-array v10, v13, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v8, v10, v14

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v12

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f121cfe

    invoke-static {v9}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v9

    new-array v10, v15, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v11, v10, v14

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mMHSCustomer:Ljava/util/HashSet;

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "SPRINT"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f121d02

    invoke-static {v9}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v11, v10, v14

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mWpaString:Ljava/lang/String;

    aput-object v11, v10, v15

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f121d36

    invoke-static {v8, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    :goto_3
    const v8, 0x7f0a07f1

    invoke-virtual {v1, v8}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-boolean v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mShouldShowSummary:Z

    if-eqz v9, :cond_7

    const v9, 0x7f121d13

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-void
.end method
