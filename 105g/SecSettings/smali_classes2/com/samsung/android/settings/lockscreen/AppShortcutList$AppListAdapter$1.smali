.class Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;
.super Ljava/lang/Object;
.source "AppShortcutList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;->val$row:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;->val$row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;

    const-string v1, "left"

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$300(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    const/16 v4, 0x1146

    if-eqz v1, :cond_0

    const/16 v1, 0x1148

    iget-object v5, v0, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    invoke-static {v4, v1, v5, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x114b

    iget-object v5, v0, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    invoke-static {v4, v1, v5, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->access$400(Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;)V

    return-void
.end method
