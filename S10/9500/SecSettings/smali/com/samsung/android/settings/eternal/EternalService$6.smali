.class Lcom/samsung/android/settings/eternal/EternalService$6;
.super Ljava/lang/Object;
.source "EternalService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/eternal/EternalService;->stopSelfOrdered(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eternal/EternalService;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eternal/EternalService;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/EternalService$6;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iput p2, p0, Lcom/samsung/android/settings/eternal/EternalService$6;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService$6;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget v1, p0, Lcom/samsung/android/settings/eternal/EternalService$6;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelf(I)V

    return-void
.end method
