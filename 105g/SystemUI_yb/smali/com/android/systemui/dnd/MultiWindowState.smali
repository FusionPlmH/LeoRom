.class public Lcom/android/systemui/dnd/MultiWindowState;
.super Ljava/lang/Object;
.source "MultiWindowState.java"


# instance fields
.field public fullscreenSupportMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    nop

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->isFullscreenSupportsSplitScreenWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/dnd/MultiWindowState;->fullscreenSupportMode:I

    return-void
.end method
