.class Lcom/samsung/android/jdsms/Sender$1;
.super Ljava/lang/Object;
.source "Sender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/jdsms/Sender;->sendToDsms(Lcom/samsung/android/jdsms/DsmsLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/jdsms/Sender;

.field final synthetic val$log:Lcom/samsung/android/jdsms/DsmsLog;


# direct methods
.method constructor <init>(Lcom/samsung/android/jdsms/Sender;Lcom/samsung/android/jdsms/DsmsLog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/jdsms/Sender$1;->this$0:Lcom/samsung/android/jdsms/Sender;

    iput-object p2, p0, Lcom/samsung/android/jdsms/Sender$1;->val$log:Lcom/samsung/android/jdsms/DsmsLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/jdsms/Sender$1;->this$0:Lcom/samsung/android/jdsms/Sender;

    iget-object v1, p0, Lcom/samsung/android/jdsms/Sender$1;->val$log:Lcom/samsung/android/jdsms/DsmsLog;

    invoke-static {v0, v1}, Lcom/samsung/android/jdsms/Sender;->access$000(Lcom/samsung/android/jdsms/Sender;Lcom/samsung/android/jdsms/DsmsLog;)V

    return-void
.end method
