.class Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;
.super Landroid/os/AsyncTask;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/flipfont/FontListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListTask"
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
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private privState:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/flipfont/FontListPreference;Lcom/samsung/android/settings/flipfont/FontListPreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    new-instance v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/flipfont/FontListPreference;->access$200(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->access$002(Lcom/samsung/android/settings/flipfont/FontListPreference;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->access$000(Lcom/samsung/android/settings/flipfont/FontListPreference;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->showDialog(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FlipFont"

    const-string v2, "dismiss/show ListLoad() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->privState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->access$200(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121561

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->access$200(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121559

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/flipfont/FontListPreference;->access$200(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method
