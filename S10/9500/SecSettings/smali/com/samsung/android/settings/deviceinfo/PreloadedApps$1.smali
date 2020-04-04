.class Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;
.super Landroid/os/AsyncTask;
.source "PreloadedApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->startAsyncTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

.field final synthetic val$isShowSystemApps:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iput-boolean p2, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->val$isShowSystemApps:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->val$isShowSystemApps:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$300(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$400(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$100(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$100(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$100(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$102(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_2

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$102(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$000(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$100(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$200(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$102(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$100(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$100(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$100(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$200(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120cc9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->access$100(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
