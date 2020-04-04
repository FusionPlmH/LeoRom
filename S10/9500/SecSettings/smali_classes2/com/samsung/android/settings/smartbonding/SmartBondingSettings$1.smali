.class Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$1;
.super Lcom/android/settings/datausage/CellDataPreference$DataStateListener;
.source "SmartBondingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->finish()V

    :cond_0
    return-void
.end method
