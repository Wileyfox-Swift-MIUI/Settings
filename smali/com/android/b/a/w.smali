.class public Lcom/android/b/a/w;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# instance fields
.field final aKB:Lcom/android/b/a/s;

.field final aKC:Ljava/lang/Object;

.field aKD:Z

.field aKE:Z

.field aKF:Lcom/android/b/a/p;

.field aKG:Ljava/util/Comparator;

.field aKH:Ljava/util/ArrayList;

.field aKI:Ljava/util/ArrayList;

.field final synthetic aKx:Lcom/android/b/a/a;

.field mResumed:Z


# direct methods
.method constructor <init>(Lcom/android/b/a/a;Lcom/android/b/a/s;)V
    .locals 1

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/w;->aKC:Ljava/lang/Object;

    .line 589
    iput-object p2, p0, Lcom/android/b/a/w;->aKB:Lcom/android/b/a/s;

    .line 590
    return-void
.end method


# virtual methods
.method public Ag()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v1, v0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v1

    .line 619
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v2, v2, Lcom/android/b/a/a;->aJL:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method Ah()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 662
    iget-object v1, p0, Lcom/android/b/a/w;->aKC:Ljava/lang/Object;

    monitor-enter v1

    .line 663
    :try_start_0
    iget-boolean v2, p0, Lcom/android/b/a/w;->aKD:Z

    if-nez v2, :cond_0

    .line 664
    monitor-exit v1

    .line 719
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v2, p0, Lcom/android/b/a/w;->aKF:Lcom/android/b/a/p;

    .line 668
    iget-object v3, p0, Lcom/android/b/a/w;->aKG:Ljava/util/Comparator;

    .line 669
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/b/a/w;->aKD:Z

    .line 670
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/b/a/w;->aKF:Lcom/android/b/a/p;

    .line 671
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/b/a/w;->aKG:Ljava/util/Comparator;

    .line 672
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 676
    if-eqz v2, :cond_1

    .line 677
    invoke-interface {v2}, Lcom/android/b/a/p;->init()V

    .line 681
    :cond_1
    iget-object v1, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v1, v1, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v1

    .line 682
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v5, v5, Lcom/android/b/a/a;->aJL:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 683
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 685
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 687
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 688
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 689
    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Lcom/android/b/a/p;->a(Lcom/android/b/a/o;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 690
    :cond_2
    iget-object v6, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v6, v6, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v6

    .line 692
    :try_start_2
    iget-object v7, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v7, v7, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/b/a/o;->cY(Landroid/content/Context;)V

    .line 694
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 687
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 672
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 683
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 696
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 700
    :cond_4
    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 702
    iget-object v1, p0, Lcom/android/b/a/w;->aKC:Ljava/lang/Object;

    monitor-enter v1

    .line 703
    :try_start_6
    iget-boolean v0, p0, Lcom/android/b/a/w;->aKD:Z

    if-nez v0, :cond_5

    .line 704
    iput-object v5, p0, Lcom/android/b/a/w;->aKI:Ljava/util/ArrayList;

    .line 705
    iget-boolean v0, p0, Lcom/android/b/a/w;->aKE:Z

    if-nez v0, :cond_6

    .line 706
    iput-object v5, p0, Lcom/android/b/a/w;->aKH:Ljava/util/ArrayList;

    .line 707
    iget-object v0, p0, Lcom/android/b/a/w;->aKC:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 716
    :cond_5
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 718
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 709
    :cond_6
    :try_start_7
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/b/a/u;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 710
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/b/a/u;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 712
    iget-object v2, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v2, v2, Lcom/android/b/a/a;->aJT:Lcom/android/b/a/u;

    invoke-virtual {v2, v0}, Lcom/android/b/a/u;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 716
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method Ai()V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aJI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    invoke-static {v0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;)V

    .line 741
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aJL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 743
    :cond_0
    return-void
.end method

.method public a(Lcom/android/b/a/p;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/b/a/w;->aKC:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v2, v0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 627
    :try_start_1
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aJJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/w;->aKD:Z

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/b/a/w;->aKE:Z

    .line 630
    iput-object p1, p0, Lcom/android/b/a/w;->aKF:Lcom/android/b/a/p;

    .line 631
    iput-object p2, p0, Lcom/android/b/a/w;->aKG:Ljava/util/Comparator;

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/a/w;->aKH:Ljava/util/ArrayList;

    .line 633
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aJS:Lcom/android/b/a/q;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/b/a/q;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aJS:Lcom/android/b/a/q;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/b/a/q;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 636
    iget-object v3, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v3, v3, Lcom/android/b/a/a;->aJS:Lcom/android/b/a/q;

    invoke-virtual {v3, v0}, Lcom/android/b/a/q;->sendMessage(Landroid/os/Message;)Z

    .line 638
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xfa

    add-long/2addr v2, v4

    .line 643
    :goto_0
    iget-object v0, p0, Lcom/android/b/a/w;->aKH:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 644
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 645
    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    .line 654
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/w;->aKE:Z

    .line 655
    iget-object v0, p0, Lcom/android/b/a/w;->aKH:Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 638
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 656
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 649
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/android/b/a/w;->aKC:Ljava/lang/Object;

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v1, v0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v1

    .line 607
    :try_start_0
    iget-boolean v0, p0, Lcom/android/b/a/w;->mResumed:Z

    if-eqz v0, :cond_0

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/b/a/w;->mResumed:Z

    .line 609
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/b/a/a;->aJQ:Z

    .line 610
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aJS:Lcom/android/b/a/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/b/a/q;->removeMessages(ILjava/lang/Object;)V

    .line 611
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    invoke-virtual {v0}, Lcom/android/b/a/a;->Ab()V

    .line 614
    :cond_0
    monitor-exit v1

    .line 615
    return-void

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/android/b/a/w;->pause()V

    .line 723
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v1, v0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v1

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aJI:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 726
    iget-object v0, p0, Lcom/android/b/a/w;->aKH:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/b/a/w;->aKH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/b/a/w;->aKI:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/android/b/a/w;->aKI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 732
    :cond_1
    invoke-virtual {p0}, Lcom/android/b/a/w;->Ai()V

    .line 734
    monitor-exit v1

    .line 735
    return-void

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    iget-object v1, v0, Lcom/android/b/a/a;->aJK:Landroid/util/SparseArray;

    monitor-enter v1

    .line 595
    :try_start_0
    iget-boolean v0, p0, Lcom/android/b/a/w;->mResumed:Z

    if-nez v0, :cond_0

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/w;->mResumed:Z

    .line 597
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/b/a/a;->aJQ:Z

    .line 598
    iget-object v0, p0, Lcom/android/b/a/w;->aKx:Lcom/android/b/a/a;

    invoke-virtual {v0}, Lcom/android/b/a/a;->zY()V

    .line 600
    :cond_0
    monitor-exit v1

    .line 602
    return-void

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
