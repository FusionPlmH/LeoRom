.class Lcom/samsung/android/settings/logging/SALogging$1;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/logging/SALogging;->gettingData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/logging/SALogging;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/logging/SALogging;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/logging/SALogging$1;->this$0:Lcom/samsung/android/settings/logging/SALogging;

    iput-object p2, p0, Lcom/samsung/android/settings/logging/SALogging$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/logging/SALogging$1;->this$0:Lcom/samsung/android/settings/logging/SALogging;

    iget-object v1, p0, Lcom/samsung/android/settings/logging/SALogging$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->access$000(Lcom/samsung/android/settings/logging/SALogging;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/logging/SALogging$1;->this$0:Lcom/samsung/android/settings/logging/SALogging;

    iget-object v1, p0, Lcom/samsung/android/settings/logging/SALogging$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->access$100(Lcom/samsung/android/settings/logging/SALogging;Landroid/content/Context;)V

    return-void
.end method
