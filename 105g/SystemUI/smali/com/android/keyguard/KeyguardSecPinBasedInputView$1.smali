.class Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;
.super Ljava/lang/Object;
.source "KeyguardSecPinBasedInputView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->access$000(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
