.class Lcom/android/settings/network/ApnSettings$8;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/ApnSettings;->showWarning()V
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

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$8;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$8;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->access$700(Lcom/android/settings/network/ApnSettings;)Z

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$8;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe2a

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method
