.class Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;
.super Ljava/lang/Object;
.source "VoiceGuideButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;


# direct methods
.method constructor <init>(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "VoiceGuideButton"

    const-string v1, "voiceIcon is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-static {v1}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->access$000(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->access$002(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;Z)Z

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-virtual {v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-static {v1}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->access$000(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/vzwswlibrary/util/Utils;->setVoiceGuideEnabled(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-static {v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->access$000(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-static {v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->access$100(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-virtual {v1}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$drawable;->vswl_voice_guide_button_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-virtual {v2}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/vzwswlibrary/R$string;->vswl_voice_guide_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-virtual {v2}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/vzwswlibrary/R$string;->vswl_on_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-static {v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->access$100(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-virtual {v1}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$drawable;->vswl_voice_guide_button_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-virtual {v2}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/vzwswlibrary/R$string;->vswl_voice_guide_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-virtual {v2}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/vzwswlibrary/R$string;->vswl_off_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-virtual {v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->stopplay()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-static {v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->access$200(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$OnVoiceGuideListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-static {v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->access$200(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$OnVoiceGuideListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;->this$0:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-static {v1}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->access$000(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$OnVoiceGuideListener;->onVoiceGuideButtonClicked(Z)V

    :cond_1
    return-void
.end method
