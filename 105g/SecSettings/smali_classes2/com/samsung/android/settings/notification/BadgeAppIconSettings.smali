.class public Lcom/samsung/android/settings/notification/BadgeAppIconSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BadgeAppIconSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mBadgeDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mBadgeDescriptionLayout:Lcom/android/settings/applications/LayoutPreference;

.field private mBadgePreview:Lcom/android/settings/applications/LayoutPreference;

.field private mBadgeShowNumberDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mBadgeSwipeDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mContext:Landroid/content/Context;

.field private mDescImage:Landroid/widget/ImageView;

.field private mHomescreenNotiPreivew:Landroid/support/v14/preference/SecSwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initBadgeDescription()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeDescriptionLayout:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a022c

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    const v3, 0x7f080574

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    const v3, 0x7f080575

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    const v3, 0x7f080573

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setEnabledBadgePrefs(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/RadioPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/RadioPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->isSupportHomescreenNotiPreivew()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private showBadgeNumberDescription(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeShowNumberDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeShowNumberDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f120fe4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeShowNumberDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateBadgeDescription()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const v1, 0x7f120fe0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeSwipeDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeSwipeDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const v1, 0x7f120fe1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$1;-><init>(Lcom/samsung/android/settings/notification/BadgeAppIconSettings;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private updateBadgeTypePref(IZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/notification/SecNotiUtils;->setBadgeAppIconType(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/notification/SecNotiUtils;->setBadgeAppIconType(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updatePreviewUI(I)V

    return-void
.end method

.method private updatePreviewUI(I)V
    .locals 24

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgePreview:Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0a05f3

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_2

    const v0, 0x7f0a00bb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const v0, 0x7f0a00bc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const v0, 0x7f0a00bd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const v0, 0x7f0a0594

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const v0, 0x7f0a0595

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const v0, 0x7f0a0596

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-direct {v0, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v11, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x7f0704df

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x7f0704de

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v12, 0x0

    invoke-virtual {v11, v0, v12, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v0, v1, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v12, "com.samsung.android.email.provider"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v18, v0

    const v0, 0x7f08057b

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    move-object v12, v0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v19, v2

    :try_start_2
    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v19, v2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v20, v0

    const v0, 0x7f08057f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v17, v0

    goto :goto_5

    :cond_0
    move-object/from16 v19, v2

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.samsung.android.dialer"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f08057e

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_3
    move-object v13, v0

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.samsung.android.messaging"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f08057d

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_4
    move-object v15, v0

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v12, v16

    :goto_5
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.android.app.sbrowser"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v21, v0

    const v0, 0x7f08057c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_6
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v14, 0x7f080266

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v14, 0x7f080268

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_1

    const/4 v14, 0x1

    invoke-direct {v1, v14}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->showBadgeNumberDescription(Z)V

    const-string v14, "ar"

    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v22, v0

    const v0, 0x7f080267

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x7f080269

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_1
    move-object/from16 v22, v0

    const/4 v14, 0x0

    invoke-direct {v1, v14}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->showBadgeNumberDescription(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x7f0704e0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x7f0704dc

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v2, 0x7f0704dd

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v14, 0x0

    invoke-virtual {v11, v0, v2, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080265

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_2
    move-object/from16 v19, v2

    :cond_3
    :goto_7
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfe6

    return v0
.end method

.method public isSupportHomescreenNotiPreivew()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    const/16 v2, 0x80

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.samsung.knox.securefolder"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v3, "knox_folder_noti_preview"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.samsung.android.knox.containeragent"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    const-string v3, "knox_folder_noti_preview"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_4
    :goto_1
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f15009d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->addPreferencesFromResource(I)V

    const-string v0, "badge_description"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const-string v0, "badge_swipe_description"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeSwipeDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeSwipeDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeSwipeDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->seslSetSubheaderRoundedBg(I)V

    :cond_0
    const-string v0, "badge_description_layout"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeDescriptionLayout:Lcom/android/settings/applications/LayoutPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->initBadgeDescription()V

    const-string v0, "app_icon_number"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "app_icon_dot"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "badge_preview"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgePreview:Lcom/android/settings/applications/LayoutPreference;

    const-string v0, "homescreen_noti_preview"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "badge_show_number_description"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeShowNumberDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeShowNumberDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeShowNumberDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->seslSetSubheaderRoundedBg(I)V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "homescreen_noti_preview"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "home_show_notification_enabled"

    nop

    invoke-static {v2, v8, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getMetricsCategory()I

    move-result v2

    const/16 v8, 0xfe9

    if-eqz v1, :cond_0

    move-wide v3, v5

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-static {v2, v8, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_1
    const-string v2, "app_icon_number"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v8, 0xfe8

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    return v9

    :cond_2
    invoke-direct {p0, v9, v7}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeTypePref(IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getMetricsCategory()I

    move-result v2

    invoke-static {v2, v8, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return v7

    :cond_3
    const-string v2, "app_icon_dot"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v1, :cond_4

    return v9

    :cond_4
    invoke-direct {p0, v7, v7}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeTypePref(IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getMetricsCategory()I

    move-result v5

    invoke-static {v5, v8, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_5
    :goto_1
    return v7
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecNotiUtils;->isEnabledBadgeAppIcon(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->setEnabledBadgePrefs(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeDescription()V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecNotiUtils;->getBadgeAppIconType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeTypePref(IZ)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "home_show_notification_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->isSupportHomescreenNotiPreivew()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/notification/SecNotiUtils;->setEnableBadgeAppIcon(Landroid/content/Context;Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->setEnabledBadgePrefs(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getMetricsCategory()I

    move-result v1

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    const/16 v4, 0xfe7

    invoke-static {v1, v4, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method
