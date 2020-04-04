.class Lcom/samsung/android/settings/smartscan/SmartScanSettings$2;
.super Ljava/lang/Object;
.source "SmartScanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSettings;->deleteSmartScanDialog()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/16 v0, 0x2122

    const/16 v1, 0x2123

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
