.class Lcom/samsung/android/settings/wifi/MobileWIPSSettings$2;
.super Landroid/database/ContentObserver;
.source "MobileWIPSSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/MobileWIPSSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/MobileWIPSSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$2;->this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "MobileWIPSSettings"

    const-string v1, "mwips db changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$2;->this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings;->access$100(Lcom/samsung/android/settings/wifi/MobileWIPSSettings;)V

    return-void
.end method
