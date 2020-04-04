.class Lcom/android/settings/location/LocationEnabler$2;
.super Ljava/lang/Object;
.source "LocationEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationEnabler;->showVzwLocationConsentDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationEnabler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationEnabler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler$2;->this$0:Lcom/android/settings/location/LocationEnabler;

    iput-object p2, p0, Lcom/android/settings/location/LocationEnabler$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler$2;->this$0:Lcom/android/settings/location/LocationEnabler;

    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/settings/location/LocationEnabler;->access$000(Lcom/android/settings/location/LocationEnabler;Landroid/content/Context;ZI)V

    return-void
.end method
