.class Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;
.super Landroid/os/AsyncTask;
.source "AppDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPrefLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/support/v7/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method private constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settings/datausage/AppDataUsage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$1900(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    new-instance v4, Landroid/support/v7/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v5}, Lcom/android/settings/datausage/AppDataUsage;->access$2000(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v5}, Lcom/android/settings/datausage/AppDataUsage;->access$2100(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->resizeIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->doInBackground([Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/support/v7/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$2200(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$2200(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->onPostExecute(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
