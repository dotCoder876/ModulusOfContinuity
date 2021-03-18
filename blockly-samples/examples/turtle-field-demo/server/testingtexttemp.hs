import Data.ByteString.Builder(toLazyByteString)
import Data.Aeson ( decode, FromJSON )
import Data.Text.Encoding (encodeUtf8Builder)
import GHC.Exts ()
import Data.Text.Internal (Text)
import System.Environment ( getArgs )
decode'' :: FromJSON a => Text -> Maybe a
decode'' = decode . toLazyByteString . encodeUtf8Builder
main :: IO ()
main = do
  args' <- getArgs
  let arg = head args'
  print arg