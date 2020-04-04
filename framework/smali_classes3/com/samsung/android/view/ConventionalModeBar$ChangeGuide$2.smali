.class Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;
.super Ljava/lang/Object;
.source "ConventionalModeBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFullscreenGuidePopup:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;


# direct methods
.method constructor <init>(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;->mFullscreenGuidePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;->mFullscreenGuidePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v1}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$500(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v3}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$500(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x10400d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    new-instance v4, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2$1;-><init>(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;->mFullscreenGuidePopup:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;->mFullscreenGuidePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FullscreenGuidePopup:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;->this$0:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    invoke-static {v5}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->access$600(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;->mFullscreenGuidePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v4, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;->mFullscreenGuidePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method
