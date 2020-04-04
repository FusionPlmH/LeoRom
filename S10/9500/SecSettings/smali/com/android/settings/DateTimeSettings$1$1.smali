.class Lcom/android/settings/DateTimeSettings$1$1;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettings$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DateTimeSettings$1;

.field final synthetic val$rebootReason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$1$1;->this$1:Lcom/android/settings/DateTimeSettings$1;

    iput-object p2, p0, Lcom/android/settings/DateTimeSettings$1$1;->val$rebootReason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings$1$1;->this$1:Lcom/android/settings/DateTimeSettings$1;

    iget-object v0, v0, Lcom/android/settings/DateTimeSettings$1;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v0}, Lcom/android/settings/DateTimeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings$1$1;->val$rebootReason:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->requestReboot(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
