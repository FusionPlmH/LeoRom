.class Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;
.super Landroid/os/AsyncTask;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/general/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetSettingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/samsung/android/settings/general/ResetSettingsValue;

    invoke-direct {v0}, Lcom/samsung/android/settings/general/ResetSettingsValue;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/general/ResetSettingsValue;->resetAllSettings(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->access$600(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
