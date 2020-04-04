.class Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;
.super Landroid/support/v7/preference/Preference;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAppPreference"
.end annotation


# instance fields
.field activityName:Landroid/content/ComponentName;

.field fragment:Lcom/samsung/android/settings/HomeSettings;

.field final grayscaleFilter:Landroid/graphics/ColorFilter;

.field index:I

.field isChecked:Z

.field isSystem:Z

.field final synthetic this$0:Lcom/samsung/android/settings/HomeSettings;

.field uninstallTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/samsung/android/settings/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/samsung/android/settings/HomeSettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d0218

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->setLayoutResource(I)V

    invoke-virtual {p0, p6}, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p9}, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->setEnabled(Z)V

    invoke-virtual {p0, p10}, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    iput-object p7, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->fragment:Lcom/samsung/android/settings/HomeSettings;

    iput p4, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->index:I

    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    const/16 v1, 0x12

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v0, v1

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-direct {p0, p8}, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->determineTargets(Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method private determineTargets(Landroid/content/pm/ActivityInfo;)V
    .locals 8

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v3, "android.app.home.alternate"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/samsung/android/settings/HomeSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/HomeSettings;->access$500(Lcom/samsung/android/settings/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/samsung/android/settings/HomeSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/HomeSettings;->access$500(Lcom/samsung/android/settings/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    iput-boolean v7, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v7, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "HomeSettings"

    const-string v6, "Unable to compare/resolve alternate"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v1

    move-object v1, v3

    iget-object v3, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/samsung/android/settings/HomeSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v5, "getApplicationUninstallationEnabled"

    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-eq v3, v2, :cond_4

    iput-boolean v2, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    :cond_4
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a03a5

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget v1, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0144

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/samsung/android/settings/HomeSettings;

    iget-object v3, v3, Lcom/samsung/android/settings/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    const v3, 0x7f0a039d

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/samsung/android/settings/HomeSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->notifyChanged()V

    :cond_0
    return-void
.end method
