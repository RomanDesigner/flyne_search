.class public interface abstract Lcom/facebook/imagepipeline/cache/DiskCachePolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createAndStartCacheReadTask(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)La/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "La/h",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCacheChoiceForResult(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
.end method

.method public abstract writeToCache(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)V
.end method
