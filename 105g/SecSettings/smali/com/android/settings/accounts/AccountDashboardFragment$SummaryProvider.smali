.class Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;
.super Ljava/lang/Object;
.source "AccountDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 13

    if-eqz p1, :cond_5

    new-instance v0, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    array-length v4, v1

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x3

    array-length v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v3

    move v3, v5

    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_4

    if-lez v4, :cond_4

    iget-object v7, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    aget-object v8, v1, v3

    invoke-virtual {v0, v7, v8}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    if-nez v6, :cond_2

    invoke-virtual {v2, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    const v9, 0x7f120c23

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v5

    invoke-virtual {v2, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    add-int/lit8 v4, v4, -0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f120085

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_4
    iget-object v3, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v3, p0, v6}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
