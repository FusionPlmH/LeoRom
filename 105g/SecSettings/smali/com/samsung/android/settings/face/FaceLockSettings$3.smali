.class Lcom/samsung/android/settings/face/FaceLockSettings$3;
.super Ljava/lang/Object;
.source "FaceLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceLockSettings;->showFaceRetryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceLockSettings$3;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings$3;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/face/FaceLockSettings;Z)V

    return-void
.end method
