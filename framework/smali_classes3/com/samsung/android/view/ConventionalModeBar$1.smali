.class Lcom/samsung/android/view/ConventionalModeBar$1;
.super Ljava/lang/Object;
.source "ConventionalModeBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/view/ConventionalModeBar;->makeChangeRatioButton()Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/view/ConventionalModeBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/view/ConventionalModeBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/view/ConventionalModeBar$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar;

    invoke-static {v0}, Lcom/samsung/android/view/ConventionalModeBar;->access$000(Lcom/samsung/android/view/ConventionalModeBar;)Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar;

    new-instance v1, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-direct {v1}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/view/ConventionalModeBar;->access$002(Lcom/samsung/android/view/ConventionalModeBar;Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar;

    invoke-static {v0}, Lcom/samsung/android/view/ConventionalModeBar;->access$000(Lcom/samsung/android/view/ConventionalModeBar;)Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar;

    invoke-static {v0}, Lcom/samsung/android/view/ConventionalModeBar;->access$100(Lcom/samsung/android/view/ConventionalModeBar;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar;

    invoke-static {v0}, Lcom/samsung/android/view/ConventionalModeBar;->access$200(Lcom/samsung/android/view/ConventionalModeBar;)Landroid/content/Context;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$1;->this$0:Lcom/samsung/android/view/ConventionalModeBar;

    invoke-static {v0}, Lcom/samsung/android/view/ConventionalModeBar;->access$300(Lcom/samsung/android/view/ConventionalModeBar;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->showChangeGuide(Ljava/lang/String;IZILandroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method
