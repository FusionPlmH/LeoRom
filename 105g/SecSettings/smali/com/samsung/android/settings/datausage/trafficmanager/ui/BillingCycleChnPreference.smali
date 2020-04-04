.class public Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnPreference;
.super Landroid/support/v7/preference/Preference;
.source "BillingCycleChnPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field private mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "network_template"

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x25

    move-object v3, v0

    invoke-static/range {v1 .. v8}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZI)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public performClick()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->performClick()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnPreference;->mTemplate:Landroid/net/NetworkTemplate;

    iput p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnPreference;->mSubId:I

    iput-object p3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnPreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnPreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
