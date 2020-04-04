.class Lcom/samsung/android/settings/wifi/MobileWIPSPrefController$2;
.super Landroid/database/ContentObserver;
.source "MobileWIPSPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/MobileWIPSPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/MobileWIPSPrefController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/MobileWIPSPrefController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/MobileWIPSPrefController$2;->this$0:Lcom/samsung/android/settings/wifi/MobileWIPSPrefController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/MobileWIPSPrefController$2;->this$0:Lcom/samsung/android/settings/wifi/MobileWIPSPrefController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/MobileWIPSPrefController;->access$100(Lcom/samsung/android/settings/wifi/MobileWIPSPrefController;)V

    return-void
.end method
