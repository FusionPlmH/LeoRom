.class public final synthetic Lcom/fusionleo/LeoX/server/-$$Lambda$LeoGlobalAction$yRxanjMYTdPc77r9z6fzeFJ0N9w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/input/InputManager;

.field private final synthetic f$1:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/input/InputManager;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fusionleo/LeoX/server/-$$Lambda$LeoGlobalAction$yRxanjMYTdPc77r9z6fzeFJ0N9w;->f$0:Landroid/hardware/input/InputManager;

    iput-object p2, p0, Lcom/fusionleo/LeoX/server/-$$Lambda$LeoGlobalAction$yRxanjMYTdPc77r9z6fzeFJ0N9w;->f$1:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/fusionleo/LeoX/server/-$$Lambda$LeoGlobalAction$yRxanjMYTdPc77r9z6fzeFJ0N9w;->f$0:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/fusionleo/LeoX/server/-$$Lambda$LeoGlobalAction$yRxanjMYTdPc77r9z6fzeFJ0N9w;->f$1:Landroid/view/KeyEvent;

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->lambda$triggerVirtualKeypress$0(Landroid/hardware/input/InputManager;Landroid/view/KeyEvent;)V

    return-void
.end method
