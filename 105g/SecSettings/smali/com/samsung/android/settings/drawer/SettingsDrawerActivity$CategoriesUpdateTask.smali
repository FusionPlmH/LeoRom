.class Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;
.super Landroid/os/AsyncTask;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoriesUpdateTask"
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
.field private final mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

.field private mClearCache:Z

.field final synthetic this$0:Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mClearCache:Z

    invoke-static {p1}, Lcom/android/settingslib/drawer/CategoryManager;->get(Landroid/content/Context;)Lcom/android/settingslib/drawer/CategoryManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;Z)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mClearCache:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mClearCache:Z

    invoke-static {p1}, Lcom/android/settingslib/drawer/CategoryManager;->get(Landroid/content/Context;)Lcom/android/settingslib/drawer/CategoryManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    iget-object v1, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;

    iget-object v2, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->getSettingPkg()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mClearCache:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/drawer/CategoryManager;->reloadAllCategories(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    invoke-static {}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->access$100()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/CategoryManager;->updateCategoryFromBlacklist(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->access$200(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;)V

    return-void
.end method
