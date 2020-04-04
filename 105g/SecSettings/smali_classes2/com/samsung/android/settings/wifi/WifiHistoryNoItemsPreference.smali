.class public Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;
.super Landroid/support/v7/preference/Preference;
.source "WifiHistoryNoItemsPreference.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mBaseView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mEmptyHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;->mBaseView:Landroid/view/View;

    const v0, 0x7f0d0241

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;->mBaseView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;->mBaseView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;->mBaseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;->mEmptyHeight:I

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;->mEmptyHeight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    return-void
.end method
