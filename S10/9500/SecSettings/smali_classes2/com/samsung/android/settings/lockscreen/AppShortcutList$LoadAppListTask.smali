.class Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;
.super Landroid/os/AsyncTask;
.source "AppShortcutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAppListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/lockscreen/AppShortcutList;Lcom/samsung/android/settings/lockscreen/AppShortcutList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;-><init>(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)V

    return-void
.end method


# virtual methods
.method protected add()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$600(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$600(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$600(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$900(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$600(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$500(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)V

    return-void
.end method

.method protected clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$500(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$600(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$600(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$600(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$900(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$500(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    new-instance v7, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0d01d6

    const/4 v5, 0x0

    move-object v1, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;-><init>(Lcom/samsung/android/settings/lockscreen/AppShortcutList;Landroid/content/Context;IILjava/util/List;)V

    invoke-static {v0, v7}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$602(Lcom/samsung/android/settings/lockscreen/AppShortcutList;Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;)Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$700(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$600(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$200(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$200(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->clear()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$800(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
