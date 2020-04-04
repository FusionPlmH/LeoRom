.class Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FingerPrintRenameEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintRenameEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;


# direct methods
.method private constructor <init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Lcom/android/settings/fingerprint/FingerPrintRenameEditText$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "FpstFingerPrintRenameEditText"

    const-string v1, "Doubletap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->access$202(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Z)Z

    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
