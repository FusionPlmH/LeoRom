.class Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;
.super Landroid/os/AsyncTask;
.source "SecFontStylePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;
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
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$402(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$500(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$402(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$400(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$400(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$400(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$100(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontNameFromSystem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$400(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$100(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SecFontStylePreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "this is regarding debugging. it is not problem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->cancel(Z)Z

    :goto_0
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$300(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$300(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$300(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/app/ProgressDialog;

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
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$302(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_2

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$302(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    throw v1

    :cond_0
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$600(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$700(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$202(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "SecFontStylePreferenceFragment"

    const-string v2, "dismiss/show ListLoad() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$202(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$300(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f130135

    invoke-direct {v2, v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$302(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$300(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$300(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$300(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
