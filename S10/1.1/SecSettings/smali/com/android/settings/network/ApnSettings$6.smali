.class Lcom/android/settings/network/ApnSettings$6;
.super Landroid/telephony/PhoneStateListener;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$6;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$6;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$6;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    return-void
.end method
