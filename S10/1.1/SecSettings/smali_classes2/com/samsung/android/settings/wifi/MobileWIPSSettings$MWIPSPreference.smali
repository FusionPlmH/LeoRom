.class Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;
.super Landroid/support/v7/preference/Preference;
.source "MobileWIPSSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/MobileWIPSSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MWIPSPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/MobileWIPSSettings;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;->this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d022b

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    const v0, 0x7f0a0926

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0144

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0806e7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference$1;-><init>(Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method
