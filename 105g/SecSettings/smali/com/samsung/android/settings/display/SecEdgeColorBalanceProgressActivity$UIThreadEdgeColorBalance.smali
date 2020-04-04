.class public Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;
.super Landroid/os/AsyncTask;
.source "SecEdgeColorBalanceProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIThreadEdgeColorBalance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "SecEdgeColorBalanceProgressActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stpoc] [UIThreadEdgeColorBalance] reqeust param : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$400(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->startReadEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;I)V

    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v1, "[stpoc] [UIThreadEdgeColorBalance] onPostExecute"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
