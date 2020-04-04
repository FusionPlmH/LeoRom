.class Lcom/samsung/android/settings/display/controller/HomeScreenPreferenceController$1;
.super Ljava/lang/Object;
.source "HomeScreenPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/controller/HomeScreenPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/HomeScreenPreferenceController;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/HomeScreenPreferenceController;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/HomeScreenPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/HomeScreenPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/display/controller/HomeScreenPreferenceController$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/HomeScreenPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/HomeScreenPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/display/controller/HomeScreenPreferenceController;->access$000(Lcom/samsung/android/settings/display/controller/HomeScreenPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/HomeScreenPreferenceController$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
