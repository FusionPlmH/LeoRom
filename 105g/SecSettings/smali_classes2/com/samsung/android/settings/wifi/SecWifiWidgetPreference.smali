.class public Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;
.super Landroid/support/v7/preference/Preference;
.source "SecWifiWidgetPreference.java"


# static fields
.field private static mClickable:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnWidgetClickListener:Landroid/view/View$OnClickListener;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->mClickable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->mVisible:Z

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0d02ea

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->onClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->mClickable:Z

    return p0
.end method

.method private onClicked(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->mOnWidgetClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->mClickable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->mClickable:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->mOnWidgetClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference$2;-><init>(Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    const v0, 0x7f0a04ea

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->mVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference$1;-><init>(Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setOnWidgetClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->mOnWidgetClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setWidgetVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->mVisible:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->notifyChanged()V

    return-void
.end method
