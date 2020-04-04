.class Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;
.super Landroid/os/AsyncTask;
.source "SecSoundModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecSoundModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSoundModeControlsAsync"
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
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/SecSoundModeSettings;Lcom/samsung/android/settings/notification/SecSoundModeSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;-><init>(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$1300(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V

    return-void
.end method
