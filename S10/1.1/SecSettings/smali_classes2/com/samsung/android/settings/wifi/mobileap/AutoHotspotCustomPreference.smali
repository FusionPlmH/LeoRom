.class public Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;
.super Landroid/support/v7/preference/Preference;
.source "AutoHotspotCustomPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBleScanAllowedDevice:Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

.field private mSecondaryIcon:Landroid/graphics/drawable/Drawable;

.field private mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

.field private mSecondaryIconResId:I

.field private mSmartWhiteList:Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AutoHotspotCustomPreference"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "AutoHotspotCustomPreference() - SmartWhiteList device received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSmartWhiteList:Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setLayoutResource(I)V

    invoke-virtual {p2}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0803df

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setIcon(I)V

    const v0, 0x7f0803de

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setSecondaryIcon(I)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoHotspotCustomPreference() - SmartWhiteList Preference added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSmartWhiteList:Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {v2}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSmartWhiteList:Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {v2}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "AutoHotspotCustomPreference() - SemWifiApBleScanResult device received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSmartWhiteList:Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setLayoutResource(I)V

    iget-object v0, p2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0803df

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setIcon(I)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoHotspotCustomPreference() - SemWifiApBleScanResult Preference added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map$Entry;Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "AutoHotspotCustomPreference() - Account name for Account preference received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSmartWhiteList:Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setLayoutResource(I)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setKey(Ljava/lang/String;)V

    const v0, 0x7f0803dc

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setIcon(I)V

    if-nez p4, :cond_0

    invoke-virtual {p0, p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSmartWhiteList:Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;)Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "onBindViewHolder() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    const v0, 0x7f0a03d1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIconResId:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIconResId:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick() - preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSmartWhiteList:Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "onPreferenceClick() - mSmartWhiteList is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSmartWhiteList:Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;->onPreferenceClicked(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "onPreferenceClick() - mBleScanAllowedDevice is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;->onPreferenceClicked(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "onPreferenceClick() - other preference clicked is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;->onPreferenceClicked(Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabled(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "setEnabled() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setSecondaryIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIconResId:I

    return-void
.end method

.method public setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->mSecondaryIconResId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->notifyChanged()V

    :cond_2
    return-void
.end method
