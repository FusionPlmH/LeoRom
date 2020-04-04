.class Lcom/android/keyguard/KeyguardSecAbsKeyInputView$4;
.super Ljava/lang/Object;
.source "KeyguardSecAbsKeyInputView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$100(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    return-void
.end method
