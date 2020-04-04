.class Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;
.super Ljava/lang/Object;
.source "ScreenTimeoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->setScreenTimeoutAdapter(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

.field final synthetic val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->access$000(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
