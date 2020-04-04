.class Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;
.super Landroid/os/AsyncTask;
.source "FullScreenAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreatePreferenceNewTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Landroid/support/v7/preference/Preference;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$1300(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$000(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$1400(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removeAll()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$1500(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$1500(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$1400(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v4, Lcom/android/settings/applications/LayoutPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$800(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01bf

    invoke-direct {v4, v5, v6}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-eq v1, v5, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$1400(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_1
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->seslSetRoundedBg(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "empty_category"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_3

    move v0, v3

    nop

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$1500(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$1600(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$1600(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$1800(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$1700(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method
