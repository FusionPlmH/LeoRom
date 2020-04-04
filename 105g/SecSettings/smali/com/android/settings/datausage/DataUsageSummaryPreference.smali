.class public Lcom/android/settings/datausage/DataUsageSummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "DataUsageSummaryPreference.java"


# static fields
.field private static final MILLIS_IN_A_DAY:J

.field static final SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final WARNING_AGE:J


# instance fields
.field private mCarrierName:Ljava/lang/CharSequence;

.field private mChartEnabled:Z

.field private mCycleEndTimeMs:J

.field private mCycleStartTimeMs:J

.field private mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

.field private mDataUsageTemplate:I

.field private mDataplanSize:J

.field private mDataplanUse:J

.field private mEndLabel:Ljava/lang/CharSequence;

.field private mHasMobileData:Z

.field private mLaunchIntent:Landroid/content/Intent;

.field private mLimitInfoText:Ljava/lang/String;

.field private mNumPlans:I

.field private mProgress:F

.field private mSnapshotTimeMs:J

.field private mStartLabel:Ljava/lang/CharSequence;

.field private mUsagePeriod:Ljava/lang/String;

.field private mUsageTitle:Landroid/widget/TextView;

.field private mWifiMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->MILLIS_IN_A_DAY:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->WARNING_AGE:J

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    const v0, 0x7f0d0166

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLayoutResource(I)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    return-void
.end method

.method private static smallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V
    .locals 7

    const v0, 0x3f111111

    const/16 v1, 0x12

    invoke-static {p0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x12

    const v5, 0x3f111111

    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v6, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v6, v3, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v6, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v6, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v6, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v6, v3, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateCycleTimeText(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9

    const v0, 0x7f0a01f4

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleStartTimeMs:J

    iget-wide v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleStartTimeMs:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    iget-wide v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v7, 0x1

    aput-object v2, v5, v7

    const v8, 0x7f121412

    invoke-virtual {v3, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    const v5, 0x7f121413

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a023f

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    const v2, 0x7f0a043e

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v1, 0x7f0a08c2

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    const v1, 0x7f0a01fc

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    if-eqz v2, :cond_2

    const v2, 0x7f12141f

    iput v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageTemplate:I

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0a01f4

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsagePeriod:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const v2, 0x7f12141e

    iput v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageTemplate:I

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateCycleTimeText(Landroid/support/v7/preference/PreferenceViewHolder;)V

    nop

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateDataUsageLabels()V

    return-void
.end method

.method public setChartEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setLabels(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    return-void
.end method

.method public setLimitInfo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    return-void
.end method

.method public setUsageInfo(JJJLjava/lang/CharSequence;ILandroid/content/Intent;)V
    .locals 2

    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleStartTimeMs:J

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x1

    sub-long v0, p3, v0

    goto :goto_0

    :cond_0
    move-wide v0, p3

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    iput-wide p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    iput p8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    iput-object p9, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    return-void
.end method

.method public setUsageNumbers(JJZ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    iput-boolean p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mHasMobileData:Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    return-void
.end method

.method public setWifiMode(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsagePeriod:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    return-void
.end method

.method public updateDataUsageLabels()V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    const/4 v4, 0x4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_usage_display_unit"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportDynamicUnits()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageTemplate:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    invoke-static {v7, v1, v8, v9}, Lcom/samsung/android/settings/ConnectionsUtils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    invoke-static {v3, v1, v4, v5}, Lcom/samsung/android/settings/ConnectionsUtils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->smallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageTemplate:I

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    iget-object v11, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v11, v10, v4

    iget-object v11, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v11, v10, v5

    const v11, 0x1040357

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v7, v3, v4

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v6, v11, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->smallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
