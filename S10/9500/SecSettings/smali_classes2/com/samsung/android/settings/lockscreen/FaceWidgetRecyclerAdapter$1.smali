.class Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "FaceWidgetRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

.field final synthetic val$switchView:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;Landroid/widget/Switch;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$1;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$1;->val$switchView:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$1;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->access$000(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "face_widgets_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$1;->val$switchView:Landroid/widget/Switch;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
