.class Lcom/android/settings/widget/SwitchBar$1;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SwitchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {v0}, Lcom/android/settings/widget/SwitchBar;->access$000(Lcom/android/settings/widget/SwitchBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {v0}, Lcom/android/settings/widget/SwitchBar;->access$100(Lcom/android/settings/widget/SwitchBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {v0}, Lcom/android/settings/widget/SwitchBar;->access$100(Lcom/android/settings/widget/SwitchBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {v0}, Lcom/android/settings/widget/SwitchBar;->access$200(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {v0}, Lcom/android/settings/widget/SwitchBar;->access$200(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {v0}, Lcom/android/settings/widget/SwitchBar;->access$200(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {v1}, Lcom/android/settings/widget/SwitchBar;->access$200(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
