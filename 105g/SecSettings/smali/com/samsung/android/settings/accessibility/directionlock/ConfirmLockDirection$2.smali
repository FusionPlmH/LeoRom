.class Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$2;
.super Ljava/lang/Object;
.source "ConfirmLockDirection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->initializeIdentifiers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->finish()V

    return-void
.end method
